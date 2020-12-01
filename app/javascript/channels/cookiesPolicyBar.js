



function cookiesPolicyBar(){
    // Check cookie
    if (localStorage.cookie !== "true") {
      document.querySelector('#cookieAcceptBar').classList.add("show")
    }
    //Assign cookie on click
    $('#cookieAcceptBarConfirm').on('click',function(){
      console.log("click");
      localStorage.cookie = "true";
        // $.cookie('yourCookieName', 'active', { expires: 1 }); // cookie will expire in one day
        $('#cookieAcceptBar').fadeOut();
        document.querySelector('#cookieAcceptBar').classList.remove("show")
    });
}

export { cookiesPolicyBar };
