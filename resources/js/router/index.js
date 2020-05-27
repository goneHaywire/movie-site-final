import Vue from 'vue'
import store from '../store/index.js'
import VueRouter from 'vue-router'
import NProgress from 'nprogress'
import GenreService from "../services/GenreService";

Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        name: 'Home',
        component: () =>
            import ('../views/Home.vue'),
    },
    {
        path: '/about',
        name: 'About',
        component: () =>
            import ('../views/About.vue')
    },
    {
        path: '/movies',
        name: 'Movies',
        component: () =>
            import ('../views/Movies.vue')
    },
    {
        path: '/genres',
        name: 'Genres',
        component: () =>
            import ('../views/Genres.vue')
    },
    {
        path: "/add-movie",
        name: 'Add Movie',
        component: () =>
            import('../views/AddMovie.vue')
    }
]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})

router.beforeEach(async (routeTo, routeFrom, next) => {
    window.scrollTo(0, 0)
    NProgress.start()

    if (!store.getters.getMovies.length)
        await store.dispatch('fetchMovies')

    if (!store.getters.getGenres.length)
        await store.dispatch('fetchGenres')

    next()
})

router.afterEach(() => {
    NProgress.done()
})

export default router
