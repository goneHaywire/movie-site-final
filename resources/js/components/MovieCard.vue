<template>
    <div class="col-md-3">
        <div
            class="card text-white bg-primary mb-5"
            style="max-width: 20rem;"
            @click="$emit('setMovie', movie.id)"
        >
            <div class="card-body">
                <h4 class="card-title">{{ movie.title }}</h4>
                <p class="card-text">{{ movie.description }}</p>
            </div>
            <img class="card-image" :src="'../storage/imgs/' + movie.image" :alt="movie.title" />
        </div>
    </div>
</template>

<script>
    export default {
        name: "MovieCard",
        props: {
            movie: {
                required: true,
            }
        }
    }
</script>

<style scoped>

</style>
