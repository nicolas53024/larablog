<template>
    <div class="row">
    <div class="col-md-3" v-for="category in categories" :key="category.id">
        <div class="card mt-3" >
         <router-link  :to="{name: 'post-category', params:{category_id: category.id} }" >
            <img src="http://127.0.0.1/larablog/public/images_category/php.svg" class="card-img-top" alt="..." width="400" height="400">
            <div class="card-body">
                <h5 class="card-title text-center">{{ category.title }}</h5>
            </div>
            </router-link>
        </div>
        </div>
    </div>
</template>

<script>
    export default {
        created() {
            this.getCategories();
        },
        data: function() {
            return {
               categories:""
            }
        },
        methods: {
            getCategories: function() {
                 fetch('/api/category/all')
                 .then(response=>response.json())
                 .then(json=> (this.categories=json.data))
            },
        },
       
    }
</script>