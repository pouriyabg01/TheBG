<?php

namespace App\Filament\Admin\Resources\ProductResource\RelationManagers;

use App\Enums\ProductImageTypeEnum;
use App\Models\Products\ProductImage;
use App\Rules\UniqueThumbnailPerProduct;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Closure;

class ImageRelationManager extends RelationManager
{
    protected static string $relationship = 'images';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                //TODO change directory and file name and delete file after deleting row
                Forms\Components\FileUpload::make('name')
                    ->image()
                    ->imageEditor()
                    ->imageResizeTargetWidth('518')
                    ->imageResizeTargetHeight('484')
                    ->imageCropAspectRatio(
                        '1:1',
                    )
                    ->directory('shop/products/catalog')
                    ->required()
//                    ->preserveFilenames() Preserving original file names
                    ->maxSize(1024),
                Forms\Components\Select::make('type')
                    ->required()
                    ->options(ProductImageTypeEnum::class)
                    ->native(false)
                    ->rule(new UniqueThumbnailPerProduct($this->getOwnerRecord()))
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                Tables\Columns\ImageColumn::make('name'),
                Tables\Columns\TextColumn::make('type')

            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
}
