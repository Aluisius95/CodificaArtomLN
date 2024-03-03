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
    $(".btn-outline-dark").click(function(){
        switch($(this).attr("id")){
            case("pg34D"):{
                if($("#page34").find(".deleted").attr("style") == "display: none; color: red"){
                    $("#page34").find(".deleted").attr("style","display: inline-block; color: red");
                } else {
                    $("#page34").find(".deleted").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg34A"):{
                if($("#page34").find(".above").attr("style") == "display: none; color: red"){
                    $("#page34").find(".above").attr("style","display: inline-block; color: red");
                } else {
                    $("#page34").find(".above").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg34AB"):{
                if($("#page34").find(".abbreviaton").attr("style") == "display: none; color: red"){
                    $("#page34").find(".expansion").attr("style","display: none");
                    $("#page34").find(".abbreviaton").attr("style","display: inline-block; color: red");
                } else {
                    $("#page34").find(".expansion").attr("style","display: inline-block");
                    $("#page34").find(".abbreviaton").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg35D"):{
                if($("#page35").find(".deleted").attr("style") == "display: none; color: red"){
                    $("#page35").find(".deleted").attr("style","display: inline-block; color: red");
                } else {
                    $("#page35").find(".deleted").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg35A"):{
                if($("#page35").find(".above").attr("style") == "display: none; color: red"){
                    $("#page35").find(".above").attr("style","display: inline-block; color: red");
                } else {
                    $("#page35").find(".above").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg35S"):{
                if($("#page35").find(".substD").attr("style") == "display: none; color: red"){
                    $("#page35").find(".substA").attr("style","display: none");
                    $("#page35").find(".substD").attr("style","display: inline-block; color: red");
                } else {
                    $("#page35").find(".substA").attr("style","display: inline-block");
                    $("#page35").find(".substD").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg35AB"):{
                if($("#page35").find(".abbreviaton").attr("style") == "display: none; color: red"){
                    $("#page35").find(".expansion").attr("style","display: none");
                    $("#page35").find(".abbreviaton").attr("style","display: inline-block; color: red");
                } else {
                    $("#page35").find(".expansion").attr("style","display: inline-block");
                    $("#page35").find(".abbreviaton").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg35G"):{
                if($("#page35").find(".gap").attr("style") == "display: none; color: red"){
                    $("#page35").find(".gap").attr("style","display: inline-block; color: red");
                } else {
                    $("#page35").find(".gap").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg36D"):{
                if($("#page36").find(".deleted").attr("style") == "display: none; color: red"){
                    $("#page36").find(".deleted").attr("style","display: inline-block; color: red");
                } else {
                    $("#page36").find(".deleted").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg36C"):{
                if($("#page36").find(".thus").attr("style") == "display: none; color: red"){
                    $("#page36").find(".correction").attr("style","display: none");
                    $("#page36").find(".thus").attr("style","display: inline-block; color: red");
                } else {
                    $("#page36").find(".correction").attr("style","display: inline-block");
                    $("#page36").find(".thus").attr("style","display: none; color: red");
                }
                break;
            }
            case("pg36AB"):{
                if($("#page36").find(".abbreviaton").attr("style") == "display: none; color: red"){
                    $("#page36").find(".expansion").attr("style","display: none");
                    $("#page36").find(".abbreviaton").attr("style","display: inline-block; color: red");
                } else {
                    $("#page36").find(".expansion").attr("style","display: inline-block");
                    $("#page36").find(".abbreviaton").attr("style","display: none; color: red");
                }
                break;
            }
        }
    })
})