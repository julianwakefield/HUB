
const background = () => {
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