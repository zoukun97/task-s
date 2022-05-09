// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import $ from 'jquery'
import axios from 'axios'

document.addEventListener('DOMContentLoaded', () => {
  $('.aaa').on('click', () => {
    axios.get('/')
      .then((res) => {
        console.log(res)
      })
  })
})
