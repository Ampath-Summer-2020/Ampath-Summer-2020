


let toggleDarkMode = () => {

    cssToggle();

    if (window.localStorage.getItem('darkmode') == "f") {
         window.localStorage.setItem('darkmode', "t");
    } else {
        window.localStorage.setItem('darkmode', "f");
     }
  }


let cssToggle = () => {
    var slider = document.getElementById("dmslider");
    var html = document.getElementById("mainBody");
    var list = document.getElementsByTagName("i");
    var footer = document.getElementById("footer");
    var brand = document.getElementById("navBarLogo");
    var events = document.getElementsByClassName("ticket-instance");

    for (let i = 0; i < list.length; i++){
        list[i].classList.toggle("darkmode");
    }

    for (let i = 0; i < events.length; i++){
        events[i].classList.toggle("list_events");
        events[i].classList.toggle("eventDarkMode");
    }
    html.classList.toggle("darkmode");
    footer.classList.toggle("darkmode");
    brand.classList.toggle("darkmode");
    brand.classList.toggle("brighten");



}

if (window.localStorage.getItem('darkmode') == "t") {
    cssToggle();
    var slide = document.getElementById("dmslider");
    slide.checked = true;

}