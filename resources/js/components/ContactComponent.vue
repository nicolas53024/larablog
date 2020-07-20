<template>
    <div class="col-8 offset-2">
        <form @submit.prevent="onSubmit()" id="myForm">
            <BaseInput label="Nombre" v-model="$v.form.name.$model" :validator="$v.form.name"></BaseInput>
            <BaseInput label="Apellido" v-model="$v.form.surname.$model" :validator="$v.form.surname"></BaseInput>
            <BaseInput label="Telefono" :mask="'(+057) ###-###-##-##'" v-model="$v.form.phone.$model" :validator="$v.form.phone"></BaseInput>
            <BaseInput label="Email" type="email" v-model="$v.form.email.$model" :validator="$v.form.email"></BaseInput>
            <div class="form-group">
                <label>Contenido</label>
                <textarea class="form-control" rows="3" v-model="$v.form.content.$model" :class="{
                      'is-valid':!$v.form.content.$error && $v.form.content.$dirty,
                      'is-invalid':$v.form.content.$error,
                    }"></textarea>
            </div>
            <button :disabled="formValid" class="btn btn-success" type="submit">Enviar</button>
        </form>
    </div>
</template>

<script>
    import BaseInput from "../components/BaseInput.vue";
    import {
        required,
        minLength,
        between,
        email
    } from 'vuelidate/lib/validators';
    export default {
        components: {
            BaseInput
        },
        data() {
            return {
                form: {
                    name: "",
                    surname: "",
                    email: "",
                    phone: "",
                    content: ""
                }
            }
        },
        validations: {
            form: {
                name: {
                    required,
                    minLength: minLength(3)
                },
                surname: {
                    required,
                    minLength: minLength(3)
                },
                email: {
                    required,
                    email
                },
                phone: {
                    required,
                    minLength: minLength(20)
                },
                content: {
                    required,
                },
            }
        },
        methods: {
            onSubmit() {
                    axios.post('/api/contact',{
                      name: this.$v.form.name.$model,
                      surname: this.$v.form.surname.$model,
                      email: this.$v.form.email.$model,
                      phone: this.$v.form.phone.$model,
                      message: this.$v.form.content.$model,
                    }).then(function(response){
                        console.log(response);
                    })
                
            }
        },
        computed: {
            formValid() {
                return this.$v.form.$invalid;
                // return this.form.name.length > 0 &&
                //     this.form.surname.length > 0 &&
                //     this.form.email.length > 0 &&
                //     this.form.phone.length > 0 &&
                //     this.form.content.length > 0
            }
        },
    }
</script>

