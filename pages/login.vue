<template>
  <v-container>
    <a :href="oAuthUrl">
      <h1 class="display-4 mt-16 teal--text text-center">
        <span class="fas fa-sign-in-alt" />
      </h1>
      <p class="title teal--text text-center">
        Login
      </p>
    </a>
  </v-container>
</template>

<script>
export default {
  middleware: 'guest',
  data () {
    return {
      oAuthUrl: `${process.env.apiUrl}/oauth2authorize`
    }
  },
  fetch () {
    this.$breadcrumbs.clear()
  }
}
</script>
