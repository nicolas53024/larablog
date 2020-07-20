<template>
    <div>
        <h1 id="foo">Contenidos</h1>
        <post-list-default 
        :key="currentPage"
        @getCurrentPage="getCurrentPage" v-if="total > 0" :posts="posts" :total="total" :pCurrentPage="currentPage"> </post-list-default>
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
                total: 0,
                currentPage: 1,
            }
        },
        methods: {
            postClick: function(post) {
                this.postSelected = post;
            },
            getPosts() {
                fetch('/api/post?page=' + this.currentPage)
                    .then(response => response.json())
                    .then(json => {
                        this.posts = json.data.data;
                        this.total = json.data.last_page;
                    })
            },
            getCurrentPage(currentPage) {
                this.currentPage = currentPage;
                this.getPosts();
            }
        },
    }
</script>