(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[3],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/views/AddMovie.vue?vue&type=script&lang=js&":
/*!**************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/views/AddMovie.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vuex__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vuex */ "./node_modules/vuex/dist/vuex.esm.js");
/* harmony import */ var vue_multiselect__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vue-multiselect */ "./node_modules/vue-multiselect/dist/vue-multiselect.min.js");
/* harmony import */ var vue_multiselect__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vue_multiselect__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! vuelidate/lib/validators */ "./node_modules/vuelidate/lib/validators/index.js");
/* harmony import */ var vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var nprogress__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! nprogress */ "./node_modules/nprogress/nprogress.js");
/* harmony import */ var nprogress__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(nprogress__WEBPACK_IMPORTED_MODULE_3__);
function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//




/* harmony default export */ __webpack_exports__["default"] = ({
  name: "AddMovie",
  computed: _objectSpread({}, Object(vuex__WEBPACK_IMPORTED_MODULE_0__["mapGetters"])({
    'genres': 'getGenres'
  })),
  components: {
    Multiselect: vue_multiselect__WEBPACK_IMPORTED_MODULE_1___default.a
  },
  validations: {
    newMovie: {
      title: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      },
      director: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      },
      stars: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      },
      length: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      },
      year: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      },
      description: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      },
      genres: {
        required: vuelidate_lib_validators__WEBPACK_IMPORTED_MODULE_2__["required"]
      } // image: {required}

    }
  },
  data: function data() {
    return {
      newMovie: undefined,
      selectedGenres: []
    };
  },
  methods: {
    createBlankMovie: function createBlankMovie() {
      return {
        title: undefined,
        director: undefined,
        stars: undefined,
        length: undefined,
        year: undefined,
        description: undefined,
        genres: []
      };
    },
    createMovie: function createMovie() {
      this.$v.$touch();

      if (!this.$v.$invalid) {
        nprogress__WEBPACK_IMPORTED_MODULE_3___default.a.start();
        var data = new FormData();
        data.append('title', this.newMovie.title);
        data.append('director', this.newMovie.director);
        data.append('stars', this.newMovie.stars);
        data.append('length', this.newMovie.length);
        data.append('year', this.newMovie.year);
        data.append('description', this.newMovie.description);
        data.append('genres', JSON.stringify(this.newMovie.genres.map(function (genre) {
          return genre.id;
        })));
        data.append('image', document.querySelector("#image").files[0]);
        this.$store.dispatch('addMovie', data).then(function () {
          return nprogress__WEBPACK_IMPORTED_MODULE_3___default.a.done();
        })["catch"](function () {
          return nprogress__WEBPACK_IMPORTED_MODULE_3___default.a.done();
        });
        console.log('form submitted');
        console.log(this.newMovie);
        console.log(data);
      }
    }
  },
  created: function created() {
    this.newMovie = this.createBlankMovie();
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/views/AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true&":
/*!******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/views/AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true& ***!
  \******************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", [
    _c("h1", { staticClass: "title" }, [_vm._v("Add Movie")]),
    _vm._v(" "),
    _c("hr"),
    _vm._v(" "),
    _c("div", { staticClass: "row justify-content-center" }, [
      _c("div", { staticClass: "col-8" }, [
        _c(
          "form",
          {
            attrs: { id: "movie-form" },
            on: {
              submit: function($event) {
                $event.preventDefault()
                return _vm.createMovie()
              }
            }
          },
          [
            _c("fieldset", [
              _c(
                "div",
                { staticClass: "form-group" },
                [
                  _c("label", { attrs: { for: "title" } }, [
                    _vm._v("Movie Title:")
                  ]),
                  _vm._v(" "),
                  _c("input", {
                    directives: [
                      {
                        name: "model",
                        rawName: "v-model",
                        value: _vm.newMovie.title,
                        expression: "newMovie.title"
                      }
                    ],
                    staticClass: "form-control",
                    class: {
                      "is-valid":
                        _vm.$v.newMovie.title.$dirty &&
                        !_vm.$v.newMovie.title.$error,
                      "is-invalid": _vm.$v.newMovie.title.$error
                    },
                    attrs: {
                      type: "text",
                      id: "title",
                      placeholder: "Enter Movie Title"
                    },
                    domProps: { value: _vm.newMovie.title },
                    on: {
                      blur: function($event) {
                        return _vm.$v.newMovie.title.$touch()
                      },
                      input: function($event) {
                        if ($event.target.composing) {
                          return
                        }
                        _vm.$set(_vm.newMovie, "title", $event.target.value)
                      }
                    }
                  }),
                  _vm._v(" "),
                  _vm.$v.newMovie.title.$error
                    ? [
                        !_vm.$v.newMovie.title.required
                          ? _c("div", { staticClass: "invalid-feedback" }, [
                              _vm._v(
                                "Movie title is\n                                    required.\n                                "
                              )
                            ])
                          : _vm._e()
                      ]
                    : _vm._e()
                ],
                2
              ),
              _vm._v(" "),
              _c(
                "div",
                { staticClass: "form-group" },
                [
                  _c("label", { attrs: { for: "director" } }, [
                    _vm._v("Director:")
                  ]),
                  _vm._v(" "),
                  _c("input", {
                    directives: [
                      {
                        name: "model",
                        rawName: "v-model",
                        value: _vm.newMovie.director,
                        expression: "newMovie.director"
                      }
                    ],
                    staticClass: "form-control",
                    class: {
                      "is-valid":
                        _vm.$v.newMovie.director.$dirty &&
                        !_vm.$v.newMovie.director.$error,
                      "is-invalid": _vm.$v.newMovie.director.$error
                    },
                    attrs: {
                      type: "text",
                      id: "director",
                      placeholder: "Enter Director"
                    },
                    domProps: { value: _vm.newMovie.director },
                    on: {
                      blur: function($event) {
                        return _vm.$v.newMovie.director.$touch()
                      },
                      input: function($event) {
                        if ($event.target.composing) {
                          return
                        }
                        _vm.$set(_vm.newMovie, "director", $event.target.value)
                      }
                    }
                  }),
                  _vm._v(" "),
                  _vm.$v.newMovie.director.$error
                    ? [
                        !_vm.$v.newMovie.director.required
                          ? _c("div", { staticClass: "invalid-feedback" }, [
                              _vm._v(
                                "Movie director is\n                                    required.\n                                "
                              )
                            ])
                          : _vm._e()
                      ]
                    : _vm._e()
                ],
                2
              ),
              _vm._v(" "),
              _c(
                "div",
                { staticClass: "form-group" },
                [
                  _c("label", { attrs: { for: "stars" } }, [_vm._v("Stars:")]),
                  _vm._v(" "),
                  _c("input", {
                    directives: [
                      {
                        name: "model",
                        rawName: "v-model",
                        value: _vm.newMovie.stars,
                        expression: "newMovie.stars"
                      }
                    ],
                    staticClass: "form-control",
                    class: {
                      "is-valid":
                        _vm.$v.newMovie.stars.$dirty &&
                        !_vm.$v.newMovie.stars.$error,
                      "is-invalid": _vm.$v.newMovie.stars.$error
                    },
                    attrs: {
                      type: "text",
                      id: "stars",
                      placeholder: "Enter Stars"
                    },
                    domProps: { value: _vm.newMovie.stars },
                    on: {
                      blur: function($event) {
                        return _vm.$v.newMovie.stars.$touch()
                      },
                      input: function($event) {
                        if ($event.target.composing) {
                          return
                        }
                        _vm.$set(_vm.newMovie, "stars", $event.target.value)
                      }
                    }
                  }),
                  _vm._v(" "),
                  _vm.$v.newMovie.stars.$error
                    ? [
                        !_vm.$v.newMovie.stars.required
                          ? _c("div", { staticClass: "invalid-feedback" }, [
                              _vm._v(
                                "Movie stars are\n                                    required.\n                                "
                              )
                            ])
                          : _vm._e()
                      ]
                    : _vm._e()
                ],
                2
              ),
              _vm._v(" "),
              _c("div", { staticClass: "form-group row" }, [
                _c("div", { staticClass: "col-6" }, [
                  _c(
                    "label",
                    { staticClass: "control-label", attrs: { for: "length" } },
                    [_vm._v("Length:")]
                  ),
                  _vm._v(" "),
                  _c("div", { staticClass: "form-group" }, [
                    _c(
                      "div",
                      { staticClass: "input-group mb-3" },
                      [
                        _c("input", {
                          directives: [
                            {
                              name: "model",
                              rawName: "v-model",
                              value: _vm.newMovie.length,
                              expression: "newMovie.length"
                            }
                          ],
                          staticClass: "form-control",
                          class: {
                            "is-valid":
                              _vm.$v.newMovie.length.$dirty &&
                              !_vm.$v.newMovie.length.$error,
                            "is-invalid": _vm.$v.newMovie.length.$error
                          },
                          attrs: {
                            type: "number",
                            id: "length",
                            placeholder: "Enter Movie Length"
                          },
                          domProps: { value: _vm.newMovie.length },
                          on: {
                            blur: function($event) {
                              return _vm.$v.newMovie.length.$touch()
                            },
                            input: function($event) {
                              if ($event.target.composing) {
                                return
                              }
                              _vm.$set(
                                _vm.newMovie,
                                "length",
                                $event.target.value
                              )
                            }
                          }
                        }),
                        _vm._v(" "),
                        _vm._m(0),
                        _vm._v(" "),
                        _vm.$v.newMovie.length.$error
                          ? [
                              !_vm.$v.newMovie.length.required
                                ? _c(
                                    "div",
                                    { staticClass: "invalid-feedback" },
                                    [
                                      _vm._v(
                                        "Movie\n                                                length is\n                                                required.\n                                            "
                                      )
                                    ]
                                  )
                                : _vm._e()
                            ]
                          : _vm._e()
                      ],
                      2
                    )
                  ])
                ]),
                _vm._v(" "),
                _c(
                  "div",
                  { staticClass: "col-6" },
                  [
                    _c("label", { attrs: { for: "year" } }, [_vm._v("Year:")]),
                    _vm._v(" "),
                    _c("input", {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.newMovie.year,
                          expression: "newMovie.year"
                        }
                      ],
                      staticClass: "form-control",
                      class: {
                        "is-valid":
                          _vm.$v.newMovie.year.$dirty &&
                          !_vm.$v.newMovie.year.$error,
                        "is-invalid": _vm.$v.newMovie.year.$error
                      },
                      attrs: {
                        type: "number",
                        id: "year",
                        placeholder: "Enter Movie Year"
                      },
                      domProps: { value: _vm.newMovie.year },
                      on: {
                        blur: function($event) {
                          return _vm.$v.newMovie.year.$touch()
                        },
                        input: function($event) {
                          if ($event.target.composing) {
                            return
                          }
                          _vm.$set(_vm.newMovie, "year", $event.target.value)
                        }
                      }
                    }),
                    _vm._v(" "),
                    _vm.$v.newMovie.year.$error
                      ? [
                          !_vm.$v.newMovie.year.required
                            ? _c("div", { staticClass: "invalid-feedback" }, [
                                _vm._v(
                                  "Movie year is\n                                        required.\n                                    "
                                )
                              ])
                            : _vm._e()
                        ]
                      : _vm._e()
                  ],
                  2
                )
              ]),
              _vm._v(" "),
              _vm._m(1),
              _vm._v(" "),
              _c(
                "div",
                { staticClass: "form-group" },
                [
                  _c("label", { attrs: { for: "description" } }, [
                    _vm._v("Description:")
                  ]),
                  _vm._v(" "),
                  _c("textarea", {
                    directives: [
                      {
                        name: "model",
                        rawName: "v-model",
                        value: _vm.newMovie.description,
                        expression: "newMovie.description"
                      }
                    ],
                    staticClass: "form-control",
                    class: {
                      "is-valid":
                        _vm.$v.newMovie.description.$dirty &&
                        !_vm.$v.newMovie.description.$error,
                      "is-invalid": _vm.$v.newMovie.description.$error
                    },
                    attrs: {
                      id: "description",
                      rows: "3",
                      placeholder: "Enter Description"
                    },
                    domProps: { value: _vm.newMovie.description },
                    on: {
                      blur: function($event) {
                        return _vm.$v.newMovie.description.$touch()
                      },
                      input: function($event) {
                        if ($event.target.composing) {
                          return
                        }
                        _vm.$set(
                          _vm.newMovie,
                          "description",
                          $event.target.value
                        )
                      }
                    }
                  }),
                  _vm._v(" "),
                  _vm.$v.newMovie.description.$error
                    ? [
                        !_vm.$v.newMovie.description.required
                          ? _c("div", { staticClass: "invalid-feedback" }, [
                              _vm._v(
                                "Movie description\n                                    is\n                                    required.\n                                "
                              )
                            ])
                          : _vm._e()
                      ]
                    : _vm._e()
                ],
                2
              ),
              _vm._v(" "),
              _c(
                "div",
                { staticClass: "form-group" },
                [
                  _c("label", { staticClass: "typo__label" }, [
                    _vm._v("Movie Genres:")
                  ]),
                  _vm._v(" "),
                  _c("multiselect", {
                    class: {
                      "is-valid":
                        _vm.$v.newMovie.genres.$dirty &&
                        !_vm.$v.newMovie.genres.$error,
                      "is-invalid": _vm.$v.newMovie.genres.$error
                    },
                    attrs: {
                      options: _vm.genres,
                      multiple: true,
                      "close-on-select": false,
                      "clear-on-select": false,
                      "preserve-search": true,
                      placeholder: "Choose Movie Genres",
                      label: "name",
                      "track-by": "name",
                      "preselect-first": false
                    },
                    on: {
                      blur: function($event) {
                        return _vm.$v.newMovie.genres.$touch()
                      }
                    },
                    scopedSlots: _vm._u([
                      {
                        key: "selection",
                        fn: function(ref) {
                          var values = ref.values
                          var search = ref.search
                          var isOpen = ref.isOpen
                          return [
                            values.length && !isOpen
                              ? _c(
                                  "span",
                                  { staticClass: "multiselect__single" },
                                  [
                                    _vm._v(
                                      _vm._s(values.length) + " genres selected"
                                    )
                                  ]
                                )
                              : _vm._e()
                          ]
                        }
                      }
                    ]),
                    model: {
                      value: _vm.newMovie.genres,
                      callback: function($$v) {
                        _vm.$set(_vm.newMovie, "genres", $$v)
                      },
                      expression: "newMovie.genres"
                    }
                  }),
                  _vm._v(" "),
                  _vm.$v.newMovie.genres.$error
                    ? [
                        !_vm.$v.newMovie.genres.required
                          ? _c("div", { staticClass: "invalid-feedback" }, [
                              _vm._v(
                                "Movie genre is\n                                    required.\n                                "
                              )
                            ])
                          : _vm._e()
                      ]
                    : _vm._e()
                ],
                2
              ),
              _vm._v(" "),
              _c(
                "button",
                {
                  staticClass: "btn btn-primary",
                  class: { "is-invalid": _vm.$v.$anyError },
                  attrs: { type: "submit" }
                },
                [_vm._v("Submit")]
              ),
              _vm._v(" "),
              _vm.$v.$anyError
                ? _c("p", { staticClass: "invalid-feedback" }, [
                    _vm._v("Please fill out the required field(s).")
                  ])
                : _vm._e()
            ])
          ]
        )
      ])
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "input-group-append" }, [
      _c("span", { staticClass: "input-group-text" }, [_vm._v("mins")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "form-group" }, [
      _c("div", { staticClass: "input-group mb-3" }, [
        _c("div", { staticClass: "custom-file" }, [
          _c("input", {
            staticClass: "custom-file-input",
            attrs: { type: "file", id: "image" }
          }),
          _vm._v(" "),
          _c(
            "label",
            { staticClass: "custom-file-label", attrs: { for: "image" } },
            [_vm._v("Choose Movie Image")]
          )
        ])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/views/AddMovie.vue":
/*!*****************************************!*\
  !*** ./resources/js/views/AddMovie.vue ***!
  \*****************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _AddMovie_vue_vue_type_template_id_ecae10a4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true& */ "./resources/js/views/AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true&");
/* harmony import */ var _AddMovie_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./AddMovie.vue?vue&type=script&lang=js& */ "./resources/js/views/AddMovie.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var vue_multiselect_dist_vue_multiselect_min_css_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! vue-multiselect/dist/vue-multiselect.min.css?vue&type=style&index=0&lang=css& */ "./node_modules/vue-multiselect/dist/vue-multiselect.min.css?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _AddMovie_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _AddMovie_vue_vue_type_template_id_ecae10a4_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _AddMovie_vue_vue_type_template_id_ecae10a4_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "ecae10a4",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/views/AddMovie.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/views/AddMovie.vue?vue&type=script&lang=js&":
/*!******************************************************************!*\
  !*** ./resources/js/views/AddMovie.vue?vue&type=script&lang=js& ***!
  \******************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AddMovie_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib??ref--4-0!../../../node_modules/vue-loader/lib??vue-loader-options!./AddMovie.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/views/AddMovie.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AddMovie_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/views/AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true&":
/*!************************************************************************************!*\
  !*** ./resources/js/views/AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true& ***!
  \************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddMovie_vue_vue_type_template_id_ecae10a4_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib??vue-loader-options!./AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/views/AddMovie.vue?vue&type=template&id=ecae10a4&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddMovie_vue_vue_type_template_id_ecae10a4_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddMovie_vue_vue_type_template_id_ecae10a4_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);