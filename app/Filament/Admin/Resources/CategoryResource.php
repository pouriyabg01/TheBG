<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\CategoryResource\Pages;
use App\Filament\Admin\Resources\CategoryResource\RelationManagers;
use App\Models\Category;
use App\Models\Products\ProductCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class CategoryResource extends Resource
{
    protected static ?string $model = ProductCategory::class;

    protected static ?string $navigationIcon = 'heroicon-s-tag';

    protected static ?string $navigationGroup = 'product';

    protected static ?string $label = 'Categories';

    protected static ?int $navigationSort = 2;


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Fieldset::make('titling')
                    ->columns(3)
                    ->schema([
                        Forms\Components\TextInput::make('name')
                            ->required()
                            ->live()
                            ->afterStateUpdated(fn(Forms\Set $set ,$state ,Forms\Get $get) =>
                            $set('slug' , 'TBG-cat-'.($get('parent_id') ? ProductCategory::whereId($get('parent_id'))->first('name')->name . '-' : '').Str::slug($state))
                            )
                            ->columnSpan(1),
                        Forms\Components\TextInput::make('slug')
                            ->default('TBG-cat-')
                            ->unique(ignoreRecord: true)
                            ->extraInputAttributes(['readonly' => true])
                            ->columnSpan(1),
                        Forms\Components\Select::make('parent_id')
                            ->hint('leave it empty if this parent')
                            ->searchable()
                            ->label('Parent')
                            ->options(ProductCategory::all()->pluck('name' , 'id'))
                            ->label('parent')
                            ->columnSpan(1),
                    ]),
                Forms\Components\Textarea::make('description')
                    ->rows(3)
                    ->columnSpan(1),
                Forms\Components\FileUpload::make('image')
                    ->columnSpan(1),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->defaultSort('created_at' , 'desc')
            ->columns([
                Tables\Columns\TextColumn::make('name'),
                Tables\Columns\TextColumn::make('parent.name'),
                Tables\Columns\TextColumn::make('description')
                    ->limit('30'),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            RelationManagers\SpecTypesRelationManager::class,
            RelationManagers\TypeKeysRelationManager::class
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListCategories::route('/'),
            'create' => Pages\CreateCategory::route('/create'),
            'edit' => Pages\EditCategory::route('/{record}/edit'),
        ];
    }
}
