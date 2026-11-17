<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Submenu extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * Get the menu that owns the Submenu
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    /**
     * Get the menu associated with the Submenu
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */

    protected $table = 'navigations';

    public function menu()
    {
        return $this->belongsTo(Navigation::class, 'parent_id', 'id');
    }
}
