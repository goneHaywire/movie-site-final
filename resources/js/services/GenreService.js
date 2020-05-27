import apiClient from './API.js'

export default {
    getGenres() {
        return apiClient.get(`/genres`)
    }
}
