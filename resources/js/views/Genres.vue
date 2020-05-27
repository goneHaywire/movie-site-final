<template>
  <div>
    <h1 class="title">Genres</h1>
    <hr class="mb-4" />
    <ul class="list-group">
      <li
        v-for="genre in genres"
        class="list-group-item d-flex justify-content-between align-items-center"
        :key="genre.id"
      >
        <router-link
          :to="{name: 'Movies', query: {query: genre.name, queryType: 'genres'}}"
          tag="a"
        >{{ genre.name }}</router-link>
        <span class="badge badge-primary badge-pill">{{ genre.movieCount }}</span>
      </li>
    </ul>
  </div>
</template>

<script>
import { mapGetters } from "vuex";

export default {
  computed: {
    ...mapGetters({
      genres: "getGenres"
    })
  }
};
</script>
