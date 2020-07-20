<?php
namespace App\Imports;

use App\User;
use App\Rules\Uppercase;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\SkipsFailures;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class UsersImport implements WithValidation, SkipsOnFailure, ToCollection,  WithHeadingRow
{
    use Importable, SkipsFailures;
    
    private $errors = []; // array to accumulate errors

    

    public function collection(Collection $rows)
    {
        $fila=2;
        $rows = $rows->toArray();

        // iterating each row and validating it:
        foreach ($rows as $key=>$row) {
           
            $validator = Validator::make($row, $this->rules(), $this->validationMessages());
            if ($validator->fails()) {
                foreach ($validator->errors()->messages() as $messages) {
                    foreach ($messages as $error) {
                        // accumulating errors:
                        
                        $this->errors[] ="error en la fila $fila:". $error;

                    }
                }
                
            } else {
                User::create([
                    'rol_id' => 2, 
                    'name' => $row['nombre'],
                    'surname' => $row['apellido'],
                    'email' => $row['correo'],
                    'password' => Hash::make($row['clave']),
                ]);
            }
            $fila++;
        }
      
    }

    // this function returns all validation errors after import:
    public function getErrors()
    {
        return $this->errors;
       
    }

    public function rules(): array
    {
        return [
            'apellido' => 'required|min:4|max:30',
            'correo' => 'required|unique:users,email|email|max:255',
            'nombre' => 'required|min:4|max:30'
            /* 'nombre' => [
                'required',
                'min:5',        new Uppercase es una regla definida en rules, se puede agregar cualquiera segun la necesidad
                'max:500',
                new Uppercase ()] */
        ];
    }

    public function validationMessages()
    {
        return [
            'nombre.required' => trans('Nombre es obligatorio'),
            'apellido.required' => trans('Apellido es obligatorio'),
            'email.required' => trans('Email es obligatorio'),
            'email.unique' => trans('Email debe ser unico'),
        ];
    }

}