<template>
    <div>
        <h1>{{category.title}}</h1>
        <post-list-default 
        :key="currentPage"
         @getCurrentPage="getCurrentPage"
          v-if="total > 0" 
          :posts="posts" 
          :total="total" 
          :pCurrentPage="currentPage"> </post-list-default>
    </div>
</template>

<script>
    export default {
        created() {
            this.getPosts();
        },
        data: function() {
            return {
                posts: [],
                category: "",
                total: 0,
                currentPage: 1,
            }
        },
        methods: {
            postClick: function(post) {
                this.postSelected = post;
            },
            getPosts() {
                fetch('/api/post/' + this.$route.params.category_id + '/category?page=' + this.currentPage)
                    .then(response => response.json())
                    .then(json => {
                        this.category = json.data.category;
                        this.posts = json.data.posts.data;
                        this.total = json.data.posts.last_page;
                    });
            },
            getCurrentPage(currentPage) {
                this.currentPage = currentPage;
                this.getPosts();
            }
        },
    }
</script>