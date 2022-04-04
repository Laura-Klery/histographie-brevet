import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import VueAxios from 'vue-axios'

import MainHeader from './components/MainHeader.vue'
import MainFooter from './components/MainFooter.vue'



createApp(App)
    .component('main-header', MainHeader)
    .component('main-footer', MainFooter)
    .use(VueAxios, axios)   
    .use(store).use(router)
    .mount('#app')
