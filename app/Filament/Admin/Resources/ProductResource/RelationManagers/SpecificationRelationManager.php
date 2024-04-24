<?php

namespace App\Filament\Admin\Resources\ProductResource\RelationManagers;

use App\Models\Products\ProductCategory;
use App\Models\Products\ProductSpecificationKey;
use App\Models\Products\ProductSpecificationType;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Resources\Components\Tab;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use Livewire\Component as Livewire;


class SpecificationRelationManager extends RelationManager
{
    protected static string $relationship = 'specifications';


    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('type')
                    ->options(function (ProductCategory $productCategory) {
                        $productCategory = $productCategory->find($this->getOwnerRecord()->product_category_id);
                        $productCategory = $productCategory->specTypes()->pluck('type' , 'id')->all();
                        return $productCategory;
                    })
                    ->native(false)
                    ->live(),
                Forms\Components\Select::make('key.key')
                    ->label('Key')
                    ->preload()
                    ->options(fn (Get $get): Collection => ProductSpecificationKey::query()
                        ->where('spec_type_id', $get('type'))
                        ->pluck('key', 'id'))
                    ->createOptionForm([
                        Forms\Components\TextInput::make('key')
                    ])
                    ->afterStateUpdated(fn (Set $set, ?string $state) => $set('product_specification_key_id', $state))
                    ->native(false)
                    ->live(),
                Forms\Components\TextInput::make('value')
                    ->label('value')
                    ->required(),
                Forms\Components\Hidden::make('product_specification_key_id')
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('value')
            ->columns([
                Tables\Columns\TextColumn::make('key.type.type'),
                Tables\Columns\TextColumn::make('key.key'),
                Tables\Columns\TextColumn::make('value'),
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

    public function getTabs(): array
    {

        $tabs = ['all' => Tab::make('All')];

        $types = ProductSpecificationType::where('product_category_id'  , '=' ,$this->getOwnerRecord()->product_category_id)->get();

        foreach ($types as $type) {
            $name = $type->type;
            $slug = str($name)->slug()->toString();

            $tabs[$slug] = Tab::make($name)
                ->modifyQueryUsing(function ($query) use ($type) {
                    return $query->whereHas('key', function ($query) use ($type) {
                        $query->where('spec_type_id', $type->id);
                    });
                });
        }

        return $tabs;
    }
}
