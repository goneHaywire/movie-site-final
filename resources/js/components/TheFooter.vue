<template>
  <footer id="footer" class="bg-dark text-white">
    <div class="container py-3">
      <div class="row align-items-center justify-content-center">
        <p>&copy; Copyright 2020, Emiljan Dusha. All rights reserved.</p>
      </div>
    </div>
    <div class="scroll-top-btn btn btn-primary" @click="goToTop()">Go to Top</div>
  </footer>
</template>

<script>
export default {
  methods: {
    goToTop() {
      window.scroll(0, 0);
    }
  }
};
</script>