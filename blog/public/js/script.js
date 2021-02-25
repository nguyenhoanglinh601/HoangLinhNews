// $(document).ready(function () {
//     $(".page-header").load("app/resources/views/Admin/Share/Layout/Header.html");
//     $(".page-footer").load("Footer.html");
    
// });

// $(document).ready(function () {
//   $(".page-header-admin").load("Admin/Share/Layout/Header.blade.html");
//   $(".page-footer").load("Footer.html");
// });

function changeButtonDropdown(x) {
    x.classList.toggle("change");
}

function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}