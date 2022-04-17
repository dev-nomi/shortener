<template>
	<div class="mt-4">
		<h1 class="red--text text--lighten-1 font-weight-medium">Create Shortlink</h1>
	  <v-form @submit.prevent="createLink">
	    <v-text-field 
	      v-model="url" 
	      label="Link Url"
	      class="mt-4"
	      solo
	    ></v-text-field>
	    <v-text-field 
	      v-model="url_name" 
	      label="Link Name"
	      class="mt-4"
	      solo
	    ></v-text-field>
	    <v-text-field 
	      v-model="url_slug" 
	      label="Link Slug"
	      class="mt-4"
	      solo
	    ></v-text-field>
	    <v-btn v-if="isLoadingCreate">
	      <v-progress-circular
	        :width="3"
	        :size="25"
	        indeterminate
	        color="red"
	      ></v-progress-circular>
	    </v-btn>
	    <v-btn 
	      dark
	      type="submit"
	      color="red darken-1"
	      v-else
	    >
	      Create Link
	    </v-btn>
	  </v-form>
	</div>
</template>

<script>
	export default{
		data(){
			return{
				shortLinks: [],
        accessEvents: null,
        detailLink: null,
        url: '',
        url_name: '',
        url_slug: '',
        isLoadingCreate: false,
        isLoadingLog: false,
			}
		},

		methods: {
			hello(){
				this.$toast("I'm a toast!");
			},
		},
	};
</script>