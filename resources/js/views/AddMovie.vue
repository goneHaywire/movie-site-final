<template>
    <div>
        <h1 class="title">Add Movie</h1>
        <hr/>
        <div class="row justify-content-center">
            <div class="col-8">

                <form id="movie-form" @submit.prevent="createMovie()">
                    <fieldset>
                        <div class="form-group">
                            <label for="title">Movie Title:</label>
                            <input type="text" class="form-control" id="title" placeholder="Enter Movie Title"
                                   v-model="newMovie.title"
                                   :class="{'is-valid' : $v.newMovie.title.$dirty && !$v.newMovie.title.$error, 'is-invalid' : $v.newMovie.title.$error}"
                                   @blur="$v.newMovie.title.$touch()"
                            >

                            <template v-if="$v.newMovie.title.$error">
                                <div v-if="!$v.newMovie.title.required" class="invalid-feedback">Movie title is
                                    required.
                                </div>
                            </template>
                        </div>

                        <div class="form-group">
                            <label for="director">Director:</label>
                            <input type="text" class="form-control" id="director" placeholder="Enter Director"
                                   v-model="newMovie.director"
                                   :class="{'is-valid' : $v.newMovie.director.$dirty && !$v.newMovie.director.$error, 'is-invalid' : $v.newMovie.director.$error}"
                                   @blur="$v.newMovie.director.$touch()"
                            >

                            <template v-if="$v.newMovie.director.$error">
                                <div v-if="!$v.newMovie.director.required" class="invalid-feedback">Movie director is
                                    required.
                                </div>
                            </template>
                        </div>

                        <div class="form-group">
                            <label for="stars">Stars:</label>
                            <input type="text" class="form-control" id="stars" placeholder="Enter Stars"
                                   v-model="newMovie.stars"
                                   :class="{'is-valid' : $v.newMovie.stars.$dirty && !$v.newMovie.stars.$error, 'is-invalid' : $v.newMovie.stars.$error}"
                                   @blur="$v.newMovie.stars.$touch()"
                            >

                            <template v-if="$v.newMovie.stars.$error">
                                <div v-if="!$v.newMovie.stars.required" class="invalid-feedback">Movie stars are
                                    required.
                                </div>
                            </template>
                        </div>

                        <div class="form-group row">
                            <div class="col-6">
                                <label class="control-label" for="length">Length:</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="number" class="form-control" id="length"
                                               placeholder="Enter Movie Length" v-model="newMovie.length"
                                               :class="{'is-valid' : $v.newMovie.length.$dirty && !$v.newMovie.length.$error, 'is-invalid' : $v.newMovie.length.$error}"
                                               @blur="$v.newMovie.length.$touch()"
                                        >

                                        <div class="input-group-append">
                                            <span class="input-group-text">mins</span>
                                        </div>

                                        <template v-if="$v.newMovie.length.$error">
                                            <div v-if="!$v.newMovie.length.required" class="invalid-feedback">Movie
                                                length is
                                                required.
                                            </div>
                                        </template>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="year">Year:</label>
                                <input type="number" class="form-control" id="year" placeholder="Enter Movie Year"
                                       v-model="newMovie.year"
                                       :class="{'is-valid' : $v.newMovie.year.$dirty && !$v.newMovie.year.$error, 'is-invalid' : $v.newMovie.year.$error}"
                                       @blur="$v.newMovie.year.$touch()"
                                >

                                <template v-if="$v.newMovie.year.$error">
                                    <div v-if="!$v.newMovie.year.required" class="invalid-feedback">Movie year is
                                        required.
                                    </div>
                                </template>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="custom-file">
<!--                                     :class="{'is-valid' : $v.newMovie.image.$dirty && !$v.newMovie.image.$error, 'is-invalid' : $v.newMovie.image.$error}"-->

<!--                                >-->
                                    <input type="file" class="custom-file-input" id="image">
<!--                                           @blur="$v.newMovie.image.$touch()"-->
<!--                                    >-->

                                    <label class="custom-file-label" for="image">Choose Movie Image</label>
                                </div>
<!--                                <template v-if="$v.newMovie.image.$error">-->
<!--                                    <div v-if="!$v.newMovie.image.required" class="invalid-feedback">Movie image is-->
<!--                                        required.-->
<!--                                    </div>-->
<!--                                </template>-->
                            </div>
                        </div>
                        <!--            </div>-->

                        <div class="form-group">
                            <label for="description">Description:</label>
                            <textarea class="form-control" id="description" rows="3" placeholder="Enter Description"
                                      v-model="newMovie.description"
                                      :class="{'is-valid' : $v.newMovie.description.$dirty && !$v.newMovie.description.$error, 'is-invalid' : $v.newMovie.description.$error}"
                                      @blur="$v.newMovie.description.$touch()"
                            ></textarea>

                            <template v-if="$v.newMovie.description.$error">
                                <div v-if="!$v.newMovie.description.required" class="invalid-feedback">Movie description
                                    is
                                    required.
                                </div>
                            </template>
                        </div>

                        <div class="form-group">
                            <label class="typo__label">Movie Genres:</label>
                            <multiselect v-model="newMovie.genres" :options="genres" :multiple="true"
                                         :close-on-select="false"
                                         :clear-on-select="false" :preserve-search="true"
                                         placeholder="Choose Movie Genres"
                                         label="name" track-by="name" :preselect-first="false"
                                         :class="{'is-valid' : $v.newMovie.genres.$dirty && !$v.newMovie.genres.$error, 'is-invalid' : $v.newMovie.genres.$error}"
                                         @blur="$v.newMovie.genres.$touch()"
                            >
                                <template slot="selection" slot-scope="{ values, search, isOpen }"><span
                                    class="multiselect__single" v-if="values.length &amp;&amp; !isOpen">{{ values.length }} genres selected</span>
                                </template>
                            </multiselect>

                            <template v-if="$v.newMovie.genres.$error">
                                <div v-if="!$v.newMovie.genres.required" class="invalid-feedback">Movie genre is
                                    required.
                                </div>
                            </template>
                        </div>

                        <button type="submit" class="btn btn-primary" :class="{'is-invalid' :$v.$anyError}">Submit</button>
                        <p v-if="$v.$anyError" class="invalid-feedback">Please fill out the required field(s).</p>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    import {mapGetters} from 'vuex'
    import Multiselect from 'vue-multiselect'
    import {required} from 'vuelidate/lib/validators'
    import NProgress from 'nprogress'

    export default {
        name: "AddMovie",
        computed: {
            ...mapGetters({
                'genres': 'getGenres'
            })
        },
        components: {
            Multiselect
        },
        validations: {
            newMovie: {
                title: {required},
                director: {required},
                stars: {required},
                length: {required},
                year: {required},
                description: {required},
                genres: {required},
                // image: {required}
            }
        },
        data() {
            return {
                newMovie: undefined,
                selectedGenres: []
            }
        },
        methods: {
            createBlankMovie() {
                return {
                    title: undefined,
                    director: undefined,
                    stars: undefined,
                    length: undefined,
                    year: undefined,
                    description: undefined,
                    genres: []
                }
            },
            createMovie() {
                this.$v.$touch()
                if (!this.$v.$invalid) {
                    NProgress.start()

                    let data = new FormData();
                    data.append('title', this.newMovie.title);
                    data.append('director', this.newMovie.director);
                    data.append('stars', this.newMovie.stars);
                    data.append('length', this.newMovie.length);
                    data.append('year', this.newMovie.year);
                    data.append('description', this.newMovie.description);
                    data.append('genres', JSON.stringify(this.newMovie.genres.map(genre => genre.id)));
                    data.append('image', document.querySelector("#image").files[0]);

                    this.$store.dispatch('addMovie', data)
                        .then(() => NProgress.done())
                        .catch(() => NProgress.done())
                    console.log('form submitted')
                    console.log(this.newMovie)
                    console.log(data)
                }

            }
        },
        created() {
            this.newMovie = this.createBlankMovie()
        }
    }

</script>

<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>

<style scoped>

</style>
