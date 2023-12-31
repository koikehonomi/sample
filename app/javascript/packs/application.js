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
//require("./hello/index.js")

const scroll_to_top_btn = document.querySelector("#scroll-to-top-btn");

//クリックイベントを追加
scroll_to_top_btn.addEventListener("click", scroll_to_top);
function scroll_to_top() {
    window.scroll({ top: 0, behavior: "smooth" });
}

//スクロール時のイベントを追加
window.addEventListener("scroll", scroll_event);
function scroll_event() {
    if (window.pageYOffset > 400) {
        scroll_to_top_btn.style.opacity = "1";
    } else if (window.pageYOffset < 400) {
        scroll_to_top_btn.style.opacity = "0";
    }
}
