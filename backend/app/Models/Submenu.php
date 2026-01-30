<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Submenu extends Model
{
    use HasFactory;

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
