<template>
    <div>
        <h1 class="title">Movies</h1>
        <hr/>
        <div class="row">
            <movie-card v-for="movie in filteredMovies" :movie="movie" @setMovie="setMovie(movie.id)" :key="movie.id"></movie-card>
        </div>
    </div>
</template>

<script>
    import MovieCard from "../components/MovieCard";
    import {mapGetters} from "vuex";

    export default {
        components: {
            MovieCard
        },
        data() {
            return {
                query: "",
                queryType: ""
            };
        },
        computed: {
            ...mapGetters({
                movies: "getMovies"
            }),
            filteredMovies() {
                return this.movies.filter(movie => {
                    if (this.queryType === "title")
                        return movie[this.queryType].toLowerCase().includes(this.query);
                    else if (this.queryType === "genres"){
                        let match = false
                        console.log(movie.genres," aaaaa")
                        for (let genre of movie.genres){
                            if (genre.name.includes(this.query)) {
                                match = true
                                break
                            }
                        }
                    return match
                        // movie.genres.forEach(genre => {
                        //     console.log( genre.name)
                        //     console.log( this.query)
                        //
                        // })
                    }
                        // return movie["genre_names"].includes(this.query);
                });
            }
        },
        methods: {
            setMovie(id) {
                this.$store.dispatch("setSelectedMovie", id);
            }
        },
        created() {
            this.query = this.$route.query.query || "";
            this.queryType = this.$route.query.queryType || "title";
        }
    };
</script>
