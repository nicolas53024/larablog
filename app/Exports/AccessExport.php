<?php

namespace App\Exports;

use App\Access;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class AccessExport implements FromCollection,WithHeadings
{

    protected $id;

    function __construct($id)
    {
        $this->id = $id;
    }
    public function headings(): array
    {
        return [
            'Id',
            'id_user',
            'Fecha',
            'IP',
        ];
    }
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        return Access::where('user_id', $this->id)->get();
    }
}
