$(document).ready(function(){
    $(".navbar-toggler").click(function(){
        if($(this).attr("aria-expanded")=='false'){
            $(this).attr("aria-expanded","true");
            $("#navbarNavDropdown").show();
        } else {
            $(this).attr("aria-expanded","false");
            $("#navbarNavDropdown").hide();
        }
    })
    $("#navbarDropdownMenuLink").click(function(){
        if($(this).attr("aria-expanded")=='false'){
            $(this).attr("aria-expanded","true");
            $(".dropdown-menu").show();
            $(".dropdown-item").click(function(){
                $("#navbarDropdownMenuLink").attr("aria-expanded","false");
                $(".dropdown-menu").hide();
            })
        } else {
            $(this).attr("aria-expanded","false");
            $(".dropdown-menu").hide();
        }
    })
})