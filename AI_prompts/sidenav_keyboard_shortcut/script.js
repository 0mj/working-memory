function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}

 function toggleSubmenu() {
    const submenu = document.getElementById("servicesSubmenu");
    if (submenu.style.display === "block") {
        submenu.style.display = "none";
    } else {
        submenu.style.display = "block";
    }
}

document.addEventListener('keydown', function(event) {
    if (event.ctrlKey && event.key === 'b') {
        const sidenav = document.getElementById("mySidenav");
        if (sidenav.style.width === "250px") {
            closeNav();
        } else {
            openNav();
        }
    }
});