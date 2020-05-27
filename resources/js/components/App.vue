<template>
  <div>
    <the-navbar></the-navbar>
    <div class="container">
      <router-view :key="$route.fullPath" />
    </div>
    <the-footer></the-footer>
    <the-modal v-if="isMovieSelected"></the-modal>
  </div>
</template>

<script>
import TheNavbar from "./TheNavbar.vue";
import TheFooter from "./TheFooter.vue";
import TheModal from "./TheModal.vue";
import { mapGetters } from "vuex";

export default {
  components: { TheNavbar, TheFooter, TheModal },
  computed: {
    ...mapGetters({
      isMovieSelected: "getSelectedMovie"
    })
  }
};
</script>

<style>
@import "./../../css/style.css";
</style>
