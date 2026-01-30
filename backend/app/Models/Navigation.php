<?php

namespace App\Models;

use App\Traits\SelfReferenceTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Navigation extends Model
{
    use HasFactory;
    use SelfReferenceTrait;

    /**
     * Get all of the submenu for the Navigation
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function submenu()
    {
        return $this->hasMany(Navigation::class, 'parent_id');
    }
}
