<?php

namespace App\Filament\Admin\Resources\CategoryResource\RelationManagers;

use App\Models\Products\ProductSpecificationType;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Components\Tab;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Hamcrest\Core\Set;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Livewire\Component as Livewire;

class TypeKeysRelationManager extends RelationManager
{
    protected static string $relationship = 'keys';

    protected static ?string $label = 'Type Keys';


    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('type.type')
                    ->options($this->getOwnerRecord()->specTypes->pluck('type' , 'id'))
                    ->afterStateUpdated(fn(Forms\Set $set,$state) => $set('spec_type_id' , $state))
                    ->native(false),
                Forms\Components\TextInput::make('key')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Hidden::make('spec_type_id')

            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('key')
            ->columns([
                Tables\Columns\TextColumn::make('key'),
                Tables\Columns\TextColumn::make('type.type')
                    ->badge()
                    ->sortable(),
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

        $types = ProductSpecificationType::where('product_category_id'  , '=' ,$this->getOwnerRecord()->id)->get();

        foreach ($types as $type) {
            $name = $type->type;
            $slug = str($name)->slug()->toString();

            $tabs[$slug] = Tab::make($name)
                ->modifyQueryUsing(function ($query) use ($type) {
                    return $query->where('spec_type_id', $type->id);
                });
        }

        return $tabs;
    }
}
