(function () {
    "use strict";
      /* Swiper */
  var swiper = new Swiper(".active-chat", {
    slidesPerView: 5,
    breakpoints: {
      400: {
        slidesPerView: 6,
      },
      600: {
        slidesPerView: 9,
      },
      768: {
        slidesPerView: 9,
      },
      1024: {
        slidesPerView: 5,
      },
      1400: {
        slidesPerView: 6,
      },
    },
  });

    var myElement1 = document.getElementById('chat-msg-scroll');
    new SimpleBar(myElement1, { autoHide: true });

    var myElement2 = document.getElementById('groups-tab-pane');
    new SimpleBar(myElement2, { autoHide: true });

    var myElement3 = document.getElementById('calls-tab-pane');
    new SimpleBar(myElement3, { autoHide: true });

    var myElement4 = document.getElementById('main-chat-content');
    new SimpleBar(myElement4, { autoHide: true });

    var myElement5 = document.getElementById('chat-user-details');
    new SimpleBar(myElement5, { autoHide: true });

    document.querySelector(".responsive-chat-close").addEventListener("click", () => {
        document.querySelector(".main-chart-wrapper").classList.remove("responsive-chat-open")
    })

    document.querySelectorAll(".responsive-userinfo-open").forEach((ele) => {
        ele.addEventListener("click", () => {
            document.querySelector("#chat-user-details").classList.add("open")
        })
    })
    document.querySelector(".responsive-chat-close2").addEventListener("click",() =>{
        document.querySelector("#chat-user-details").classList.remove("open")
    })

    document.querySelector(".chat-info").addEventListener("click", () => {
        document.querySelector("#chat-user-details").classList.remove("open")
    })
    document.querySelector(".chat-content").addEventListener("click", () => {
        document.querySelector("#chat-user-details").classList.remove("open")
    })

})();

let changeTheInfo = (element, name, img, status) => {
    document.querySelectorAll(".checkforactive").forEach((ele) => {
        ele.classList.remove("active")
    })
    element.closest("li").classList.add("active")
    document.querySelectorAll(".chatnameperson").forEach((ele) => {
        ele.innerText = name
    })
    let image = `https://laravelui.spruko.com/synto/build/assets/img/users/${img}.jpg`
    document.querySelectorAll(".chatimageperson").forEach((ele) => {
        ele.src = image
    })

    document.querySelectorAll(".chatstatusperson").forEach((ele)=>{
        ele.classList.remove("online")
        ele.classList.remove("offline")
        ele.classList.add(status)
    })



    document.querySelector(".chatpersonstatus").innerText = status

    document.querySelector(".main-chart-wrapper").classList.add("responsive-chat-open")
}

const searchIcon = document.querySelector(`.search-chat-icon`);
const searchInput = document.querySelector(`.search-chat-input`);

const toggleSearch = (event) => {
  event.stopPropagation();

  if (!event.target.closest(".search-chat-input")) {
    searchInput.classList.toggle("active");

    searchInput.classList.contains("active")
      ? document.addEventListener("click", toggleSearch)
      : document.removeEventListener("click", toggleSearch);
  }
};

searchIcon.addEventListener("click", toggleSearch);