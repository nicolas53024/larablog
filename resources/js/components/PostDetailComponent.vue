<template>
    <div>
        <div v-if="post">
            <div class="card mt-3">
                <div class="card-header">
                    <img v-bind:src="'http://127.0.0.1/larablog/public/images/'+post.image.image" class="card-img-top" alt="...">
                </div>
                <div class="card-body">
                    <h5 class="card-title">{{ post.title }}</h5>
                    <router-link class="btn btn-success" :to="{name: 'post-category', params:{category_id: post.category.id} }" >{{post.category.title}}</router-link>
                    <p class="card-text" id="content">{{post.content}}</p>
                </div>
            </div>
        </div>
        <div v-else>
            <h1>El Post no existe</h1>
        </div>
    </div>
</template>
<script>
    export default {
        created() {
            this.getPost();
            // console.log("helo" + this.$route.params.id);
        },
        methods: {
            getPost: function() {
                fetch('/api/post/'+this.$route.params.id)
                 .then(response=>response.json())
                 .then(json=> (this.post=json.data))
                //  console.log(this.post);
            }
        },
        data: function() {
            return {
                postSelected: "",
                post: ""
            }
        },
    }
</script>