<template>
    <div class="col-8 offset-2">
        <div class="card">
            <div class="card-header">
                 <img src="/images/logo/android-icon-192x192.png" alt="..." class="rounded mx-auto d-block">
            </div>
            <div class="card-body">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >Nombre</span>
                    </div>
                    <input type="text" v-model="name" class="form-control">
                       
                </div>
                <div class="input-group mt-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"  >Apellido</span>
                    </div>
                    <input type="text" class="form-control">
                </div>
                <div class="input-group mt-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >email</span>
                    </div>
                    <input type="email" class="form-control">
                </div>
                <div class="input-group mt-3">
                    <textarea class="form-control" placeholder="comentarios"></textarea>
                </div>
                <button class="btn btn-lg btn-success mt-3 float-right" @click="saveContact()">Enviar</button> 
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        created() {},
        data: function() {
            return {
                name:"",
                surname:"",
                email:"",
                comment:"",
            }
        },
        methods: {
            saveContact() {
                console.log(this.name);
                return false;
                /* fetch('/api/post?page=' + this.currentPage)
                    .then(response => response.json())
                    .then(json => {
                        this.posts = json.data.data;
                        this.total = json.data.last_page;
                    }) */
            },
        },
    }
</script>