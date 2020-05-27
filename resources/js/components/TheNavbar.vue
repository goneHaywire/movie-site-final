<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <router-link
            :to="{name: 'Home'}"
            tag="a"
            class="navbar-brand"
            style="text-transform: lowercase;"
        >movie-site
        </router-link>
        <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbar"
            aria-controls="navbar"
            aria-expanded="false"
            aria-label="Toggle Navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbar">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <router-link :to="{name: 'Home'}" class="nav-link" exact-active-class="active">Home</router-link>
                </li>
                <li class="nav-item">
                    <router-link :to="{name: 'Movies'}" class="nav-link" active-class="active">Movies</router-link>
                </li>
                <li class="nav-item">
                    <router-link :to="{name: 'Genres'}" class="nav-link" active-class="active">Genres</router-link>
                </li>
                <li class="nav-item">
                    <router-link :to="{name: 'Add Movie'}" class="nav-link" active-class="active">Add Movie
                    </router-link>
                </li>
                <li class="nav-item">
                    <router-link :to="{name: 'About'}" class="nav-link" active-class="active">About</router-link>
                </li>
            </ul>

            <form @submit.prevent="handleSearch()" class="form-inline my-2 my-lg-0">
                <input
                    v-model="search_query"
                    class="form-control mr-sm-2"
                    type="search"
                    placeholder="Search"
                    aria-label="Search"
                />
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</template>

<script>
    export default {
        data() {
            return {
                search_query: ""
            };
        },
        methods: {
            handleSearch() {
                if (this.search_query.length > 0) {
                    this.$router.push({
                        name: "Movies",
                        query: {query: this.search_query, queryType: "title"}
                    });
                    this.search_query = "";
                }
            }
        }
    };
</script>
