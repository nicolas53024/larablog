/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 *                          __                                                       __                                         __      _               
   ____   ____          / /_  ____   _____  ____ _   _____         ___    _____  / /_  ___          ____ _   _____  _____   / /_    (_) _   __  ____ 
  / __ \ / __ \        / __/ / __ \ / ___/ / __ `/  / ___/        / _ \  / ___/ / __/ / _ \        / __ `/  / ___/ / ___/  / __ \  / / | | / / / __ \
 / / / // /_/ /       / /_  / /_/ // /__  / /_/ /  / /           /  __/ (__  ) / /_  /  __/       / /_/ /  / /    / /__   / / / / / /  | |/ / / /_/ /
/_/ /_/ \____/        \__/  \____/ \___/  \__,_/  /_/            \___/ /____/  \__/  \___/        \__,_/  /_/     \___/  /_/ /_/ /_/   |___/  \____/ 
                                                                                                                                                     
 * 
 * 
 * 
 * 
 */

require('./bootstrap');

const ClassicEditor = require('@ckeditor/ckeditor5-build-classic');


//////////////////////////////////////////////////////////////////////////////////////////////////7


// ...

function MyCustomUploadAdapterPlugin(editor) {
    editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
        // Configure the URL to the upload script in your back-end here!
        return new MyUploadAdapter(loader);
    };
}

////////////////////////////////////////////////////////////////////////////77
if (document.querySelector('#content') != undefined) {

    ClassicEditor.create(document.querySelector('#content'), {
        extraPlugins: [MyCustomUploadAdapterPlugin],
    })

    .then(editor => {})
        .catch(error => {
            console.log(error.stack);
        });


}

var MyUploadAdapter = require('./MyUploadAdapter.js');

import Vuelidate from 'vuelidate';
import router from './assets/router.js';
import VueMask from 'v-mask';

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
// Vue.component("list-pots", require('./components/PostListComponent.vue').default);
Vue.component("modal-post", require('./components/PostModalComponent.vue').default);
Vue.component("post-list-default", require('./components/PostListDefaultComponent.vue').default);



Vue.use(VueMask);
Vue.use(Vuelidate);

const app = new Vue({
    el: '#app',
    router,
});