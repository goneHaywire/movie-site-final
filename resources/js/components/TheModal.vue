<template>
  <div class="modal" @click.self="closeModal()">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{ movie.title }} ({{ movie.year }})</h5>
          <button
            type="button"
            class="close"
            data-dismiss="modal"
            aria-label="Close"
            @click="closeModal()"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p>{{ movie.description }}</p>
        </div>
        <div class="list-group">
          <div class="list-group-item list-group-item-action">Length: {{ movie.length }}</div>
          <div class="list-group-item list-group-item-action">Director: {{ movie.director }}</div>
          <div class="list-group-item list-group-item-action">Stars: {{ movie.stars }}</div>
          <div class="list-group-item list-group-item-action">
            Genres:
            <a
              href="javascript:void(0)"
              class="breadcrumb-item"
              @click="goToGenres(genre.name)"
              v-for="genre in movie.genres"
              :key="genre.id"
            >{{ genre.name }}&nbsp;</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";

export default {
  computed: {
    ...mapGetters({
      movie: "getSelectedMovie"
    })
  },
  methods: {
    ...mapActions({
      closeModal: "clearSelectedMovie"
    }),
    goToGenres(genre) {
      this.closeModal();
      this.$router.push({
        name: "Movies",
        query: { query: genre, queryType: "genres" }
      });
    }
  }
};
</script>
