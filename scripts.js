$(document).ready(function(){
    $(".navbar-toggler").click(function(){
        var ariaExpanded = $(this).attr("aria-expanded");
        if(ariaExpanded === 'false'){
            $(this).attr("aria-expanded","true");
            $("#navbarNavDropdown").show();
        } else {
            $(this).attr("aria-expanded","false");
            $("#navbarNavDropdown").hide();
        }
    });
    
    $("#navbarDropdownMenuLink").click(function(){
        var ariaExpanded = $(this).attr("aria-expanded");
        if(ariaExpanded === 'false'){
            $(this).attr("aria-expanded","true");
            $(".dropdown-menu").show();
        } else {
            $(this).attr("aria-expanded","false");
            $(".dropdown-menu").hide();
        }
    });
    
    $(".dropdown-item").click(function(){
        $("#navbarDropdownMenuLink").attr("aria-expanded","false");
        $(".dropdown-menu").hide();
    });

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
            case("pg34H"):{
                if($("#page34").find("#pg34_hi1").attr("style") == "")
                    $("#page34").find("#pg34_hi1").attr("style","font-weight: bold;");
                else
                    $("#page34").find("#pg34_hi1").attr("style","");

                break;
            }
            case("pg34U"):{
                if ($("#page34").find(".unclear").attr("style") == "")
                    $("#page34").find(".unclear").attr("style", "filter: blur(1px);")
                else
                    $("#page34").find(".unclear").attr("style", "")
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
            case("pg35U"):{
                if ($("#page35").find(".unclear").attr("style") == "")
                    $("#page35").find(".unclear").attr("style", "filter: blur(1px);")
                else
                    $("#page35").find(".unclear").attr("style", "")
                break;
            }
            case("pg35FT"):{
                if($("#page35").find("#pg35_ft").attr("style") == ""){
                    $("#page35").find("#pg35_ft").attr("style","color: green");
                } else {
                    $("#page35").find("#pg35_ft").attr("style","");
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
            case("pg36U"):{
                if ($("#page36").find(".unclear").attr("style") == "")
                    $("#page36").find(".unclear").attr("style", "filter: blur(1px);")
                else
                    $("#page36").find(".unclear").attr("style", "")
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

    $("area").hover(
        function() {
          var idArea = $(this).attr("title").replace("#", "");
          $(".zone").each(function() {
            if (idArea === this.id) {
              $(this).data("prevFontWeight", $(this).attr("style"));
              $(this).css("font-weight", "bold");
              return false;
            }
          });
        },
        function() {
          var idArea = $(this).attr("title").replace("#", "");
          $(".zone").each(function() {
            if (idArea === this.id) {
              $(this).css("font-weight", $(this).data("prevFontWeight"));
              return false;
            }
          });
        }
      );
})