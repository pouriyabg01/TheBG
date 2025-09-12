<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\ProductResource\Pages;
use App\Filament\Admin\Resources\ProductResource\RelationManagers;
use App\Filament\Admin\Resources\ProductResource\Widgets\productCount;
use App\Models\Brand;
use App\Models\Products\Product;
use App\Models\Products\ProductCategory;
use Filament\Actions\ActionGroup;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\Widget;
use Illuminate\Support\Str;

class ProductResource extends Resource
{
    protected static ?string $model = Product::class;

    protected static ?string $navigationIcon = 'heroicon-s-square-3-stack-3d';

    protected static ?string $navigationGroup = 'product';

    protected static ?int $navigationSort = 1;

    public static function getNavigationBadge(): ?string
    {
        return Product::all()->count();
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Fieldset::make('titling')
                    ->schema([
                        Forms\Components\TextInput::make('title')
                            ->required()
                            ->live()
                            ->afterStateUpdated(fn(Forms\Set $set ,?string $state) => $set('slug' , Str::slug($state)))
                            ,//TODO slug
                        Forms\Components\TextInput::make('price')
                            ->required(),
                        Forms\Components\TextInput::make('slug')
                            ->disabled()
                            ->unique(ignoreRecord: true)
                            ->columnSpanFull(),
                        Forms\Components\TextInput::make('code')
                            ->disabled()
                            ->unique(ignoreRecord: true)
                            ->default('TBG-pkt-'.random_int(100000 , 999999)),
                        Forms\Components\TextInput::make('offer.percent')
                            ->label('offer')
                            ->hint('% percent')
                            ->numeric()
                            ->minValue('0.1')
                            ->maxValue('100')
                            ->nullable()
                    ])
                    ->columnSpan(1),
                Forms\Components\Fieldset::make('detailing')
                    ->columns(3)
                    ->schema([
                        Forms\Components\Select::make('product_category_id')
                            ->required()
                            ->native(false)
                            ->options(ProductCategory::all()->pluck('name' , 'id'))
                            ->label('Category')
                            ->columnSpan(1),
                        Forms\Components\Select::make('brand_id')
                            ->required()
                            ->native(false)
                            ->options(Brand::all()->pluck('name' , 'id'))
                            ->label('Brand')
                            ->columnSpan(1),
                        Forms\Components\TextInput::make('existence')
                            ->required()
                            ->numeric()
                            ->columnSpan(1),
                        Forms\Components\Toggle::make('status')
                    ])
                    ->columnSpan(1),

                Forms\Components\RichEditor::make('description')
                    ->required()
                    ->extraInputAttributes(['figcaption.display' => 'none'])
                    ->columnSpanFull()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('thumbnail.name'),
                Tables\Columns\TextColumn::make('title')
                    ->searchable()
                    ->limit('15'),
                Tables\Columns\TextColumn::make('slug')
                    ->limit('15')
                    ->toggleable(),
                Tables\Columns\TextColumn::make('price'),
                Tables\Columns\IconColumn::make('status')
                    ->label('visibility')
                    ->boolean(),
                Tables\Columns\TextColumn::make('category.name')
                    ->toggleable()
                    ->label('category')
                    ->badge()
                    ->icon('heroicon-s-tag'),
                Tables\Columns\TextColumn::make('brand.name')
                    ->toggleable()
                    ->label('brand')
                    ->badge()
                    ->icon('heroicon-s-building-storefront'),
                Tables\Columns\TextColumn::make('created_at')
                    ->toggleable(isToggledHiddenByDefault:true)
                    ->dateTime('y-M-Y')
            ])
            ->searchPlaceholder('search BY title')
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\DeleteAction::make(),
                ]),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            RelationManagers\ImageRelationManager::class,
            RelationManagers\SpecificationRelationManager::class
        ];
    }

    public static function getWidgets(): array
    {
        return [
            ProductCount::class
        ];
    }

    public function getHeaderWidgets()
    {

    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListProducts::route('/'),
            'create' => Pages\CreateProduct::route('/create'),
            'edit' => Pages\EditProduct::route('/{record}/edit'),
        ];
    }
}
