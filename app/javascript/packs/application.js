// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
const navScroll = () => {
  const nav = document.getElementById("navbar")
  window.addEventListener('scroll', function () {
    if (window.scrollY >= 130) {
      nav.classList.add("nav-color")
      nav.classList.remove("nav-transparent")
    } else {
      nav.classList.add("nav-transparent")
      nav.classList.remove("nav-color")
    }
  })
}

const switchClick = () => {
  const subnav1 = document.getElementById("subnav1")
  subnav1.addEventListener('click', function () {
    subnav1.classList.add(".orange")
  })
}

const executeScripts = () => {
  navScroll()
  switchClick()
}

['ready', 'turbolinks:load'].forEach( event => {
  document.addEventListener(event, executeScripts)
})
