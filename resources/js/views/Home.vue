<template>
    <div class="home">
        <h1 class="title">Movies</h1>
        <hr/>
        <div class="row">
            <movie-card v-for="movie in movies" :movie="movie" @setMovie="setMovie(movie.id)"
                        :key="movie.id"></movie-card>
        </div>

        <router-link :to="{name: 'Movies'}" tag="a" class="btn btn-primary mb-5">Load all Movies</router-link>

        <h1 class="title">Genres</h1>
        <hr/>
        <div class="genre-grid">
            <router-link
                class="genre-cell btn btn-dark my-2 px-3"
                v-for="genre in genres"
                :key="genre.id"
                tag="div"
                :to="{name: 'Movies', query: {query: genre.name, queryType: 'genres'}}"
            >{{ genre.name }}
            </router-link>
        </div>

        <router-link :to="{name: 'Genres'}" tag="a" class="btn btn-primary mt-5 mb-4">Load all genres</router-link>
    </div>
</template>

<script>
    import MovieCard from "../components/MovieCard";
    import {mapGetters} from "vuex";

    export default {
        name: "Home",
        components: {
            MovieCard
        },
        computed: {
            ...mapGetters(["getSomeMovies", "getSomeGenres"])
        },
        beforeRouteEnter(to, from, next) {

            next(vm => {
                Vue.nextTick()
                    .then(function () {
                        vm.movies = vm.getSomeMovies(8);
                        vm.genres = vm.getSomeGenres(12);
                    })
            })
        },
        data() {
            return {
                movies: undefined,
                genres: undefined
            };
        },
        methods: {
            setMovie(id) {
                this.$store.dispatch("setSelectedMovie", id);
            }
        }
    };
</script>
