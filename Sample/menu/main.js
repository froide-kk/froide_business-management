import './style.css'

document.querySelector(".open-menu-button").addEventListener("click", () => { // メニューのボタンをクリックしたら
  document.querySelector(".menu-container").classList.toggle("is-open") // メニュー本体のcssのクラスをつけ外しし、表示・非表示を切り替える
})