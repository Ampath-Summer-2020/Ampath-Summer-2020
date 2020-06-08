


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
    //var footer = document.getElementById("footer");
    html.classList.toggle("darkmode");
    //footer.classList.toggle("retainInvert");


}

if (window.localStorage.getItem('darkmode') == "t") {
    cssToggle();
    var slide = document.getElementById("dmslider");
    slide.checked = true;

}