<?php

namespace App\Http\Requests;

use App\Rules\Uppercase;
use Illuminate\Foundation\Http\FormRequest;

class StorePostPost extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */

    public static function myRules()
    {
        //aca defino las reglas de validacion para mi formulario
        return [
            // 'title' => 'required|min:5|max:500',
            'url_clean' => 'max:500|unique:posts',//campo unico, no puede tener duplicidad en la bd
            'content' => 'required|min:5|max:5000',
            'category_id' => 'required',
            'posted' => 'required',
            'tags_id'=>'required',
            'title' => [
                'required',
                'min:5',
                'max:500',
                new Uppercase ()]
        ];
    }
    public function authorize()
    {
        //se debe autorizar la transaccion, por defecto viene false

        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return $this->myRules();
    }
}
