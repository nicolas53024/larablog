<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCategoryPut extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */

    
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
        return [
            'title' => 'required|min:5|max:500',
            'url_clean' => 'max:500|unique:categories,url_clean,'.$this->route('category')->id//mantiene la misma url anterior para poder modificar sin que genere conflicto en el unique
            



        ];
    }
}
