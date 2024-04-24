<?php

namespace App\Enums;

use Filament\Support\Contracts\HasLabel;

enum ProductImageTypeEnum: string implements HasLabel
{
    case catalog = 'catalog';
    case thumbnail = 'thumbnail';

    public function getLabel(): ?string
    {
        return match ($this) {
            self::catalog => 'catalog',
            self::thumbnail => 'thumbnail',
        };
    }
}
