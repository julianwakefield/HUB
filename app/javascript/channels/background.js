<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>

const background = () => {
    console.log('hit me')
    var duration = 16;

    var lines = document.querySelectorAll('path');
    var tl = new TimelineMax();
    tl.staggerFrom(lines, duration, 
    { 
        drawSVG: "50% 50%",
        ease: Power1.easeOut,
    },
    -duration/lines.length);

    document.addEventListener("click", function(){
    tl.restart();
    });
};
export { background };

// the issue is in written js or importing
// if js something with .quiery selector
// if importing greensock or timelinemax
