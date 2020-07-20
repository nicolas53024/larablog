<template>
    <div>
        <div class="card mt-3" v-for="post in posts" :key="post.list">
            <img v-bind:src="'http://127.0.0.1/larablog/public/images/'+post.image" class="card-img-top" alt="..." width="400" height="400">
            <div class="card-body">
                <h5 class="card-title">{{ post.title }}</h5>
                <p class="card-text">{{post.content}}</p>
                <button class="btn btn-primary" v-on:click="postClick(post)">Ver resumen</button>
                <router-link class="btn btn-success" :to="{name: 'detail', params:{id: post.id} }">Ver Detalle</router-link>
            </div>
        </div>
        <modal-post :post="postSelected"> </modal-post>
        <v-pagination v-model="currentPage"
                  class="mt-3"
                  :page-count="total"
                  :classes="bootstrapPaginationClasses"
                  :labels="paginationAnchorTexts"></v-pagination>
    </div>
</template>

<script>
    import vPagination from 'vue-plain-pagination';
    export default {
        props: ["posts","total","pCurrentPage"],
        created() {
            this.currentPage=this.pCurrentPage
        },
        data: function() {
            return {
                postSelected: '',
                currentPage: 1,
                bootstrapPaginationClasses: {
                    ul: 'pagination small',
                    // ul: 'pagination ',
                    li: 'page-item',
                    liActive: 'active',
                    liDisable: 'disabled',
                    button: 'page-link'
                },
                paginationAnchorTexts: {
                    first: '',
                    prev: '&laquo',
                    next: '&raquo',
                    last: ''
                }
            }
        },
        methods: {
            postClick: function(post) {
                this.postSelected = post;
            },
        },
        components: {
            vPagination
        },
        watch: {
            currentPage: function(newVal,oldVal){
                this.$emit('getCurrentPage',newVal);
            }
        },
    }
</script>