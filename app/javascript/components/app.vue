<template>
  <v-app> 
    <v-main>
      <v-container>
        <router-link to="/">Go to Home</router-link>
        <router-link to="/about">Go to About</router-link>        <router-view />
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
  import Home from './home.vue'
  export default {
    components: {
      Home
    },
    data() {
      return {

      }
    },
  }
</script>

<style scoped>

</style>