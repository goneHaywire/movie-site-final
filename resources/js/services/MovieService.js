import apiClient from './API.js'

export default {
    getMovies() {
        return apiClient.get(`/movies`)
    },
    storeMovie(newMovie) {
        return apiClient.post(`/movies`, newMovie)
    }
}
