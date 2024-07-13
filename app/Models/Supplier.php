<?php

namespace App\Models;

use App\Helpers\BaseHelper;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    const PHOTO_PATH = "suppliers";

    protected function photo(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => BaseHelper::storageLink(
                fileName: $value,
                folderName: self::PHOTO_PATH
            ),
        );
    }
}
