var slideWidth = 400;

var currentSlide = 0;
var numSlides;

function showSlide(index) {
    $(".slides").animate({
        left: -slideWidth * currentSlide + "px"
    }, 600,
    function(){positionInit()});
}

function positionInit() {
    if(!(currentSlide % numSlides)) {
        $(".slides").css({
            left: 0,
        });
    }
}

$(document).ready(function() {
    numSlides = $(".slides > li").length;
    $(".slides > li").clone().appendTo(".slides");
    $(".slides").css({ width: currentSlide * numSlides * 2 });
    showSlide(currentSlide);

    setInterval(function() {
        if (currentSlide < numSlides) {
            currentSlide++;
        } else {
            currentSlide = 0;
        }       
            showSlide(currentSlide);
            return false;
    }, 5000);
});