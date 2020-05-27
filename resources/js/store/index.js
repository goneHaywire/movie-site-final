import Vue from 'vue'
import Vuex from 'vuex'

import MovieService from '../services/MovieService'
import GenreService from '../services/GenreService'

Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        genres: [],
        movies: [],
        selectedMovie: ''
    },
    getters: {
        getGenres: (state) => state.genres,
        getMovies: (state) => state.movies,
        getSomeMovies: state => amount => {
            let newArray = state.movies.slice()
            return newArray.splice(0, amount)
        },
        getSomeGenres: state => amount => {
            let newArray = state.genres.slice()
            return newArray.splice(0, amount)
        },
        getSelectedMovie: state => state.selectedMovie
    },
    mutations: {
        SET_SELECTED_MOVIE(state, { id }) {
            state.selectedMovie = state.movies.find((movie) => movie.id === id)
        },
        CLEAR_SELECTED_MOVIE(state) {
            state.selectedMovie = null
        },
        SET_MOVIES(state, movies) {
            state.movies = movies
        },
        SET_GENRES(state, genres) {
            state.genres = genres
        },
        ADD_MOVIE(state, movie){
            state.movies.unshift(movie)
        }
    },
    actions: {
        setSelectedMovie({ commit }, id) {
            commit('SET_SELECTED_MOVIE', { id })
        },
        clearSelectedMovie() {
            this.commit('CLEAR_SELECTED_MOVIE')
        },
        fetchMovies({commit}) {
            MovieService.getMovies()
                .then(data => commit('SET_MOVIES', data.data))
        },
        fetchGenres() {
            GenreService.getGenres()
                .then(data => this.commit('SET_GENRES', data.data))
        },
        addMovie({ commit }, movie){
            console.log(movie)
            MovieService.storeMovie(movie)
                .then(data => {
                    console.log(data)
                    commit('ADD_MOVIE', data.data.movie)
                })

        }
    },
    modules: {}
})
