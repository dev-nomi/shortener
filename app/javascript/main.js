import Vue from 'vue'
import App from './components/app.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import router from './router'
import Toast from "vue-toastification";
import "vue-toastification/dist/index.css";

Vue.use(Vuetify);
Vue.use(Toast);

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router,
    vuetify: new Vuetify(),
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el);
})
