import Siema from 'siema'; 
const carousel = () => {
    const mySiema = new Siema({
        selector: '.games',
        perPage: {
          768: 2,
          1024: 4,
        },
      });
      const prev = document.querySelector('.prev');
      const next = document.querySelector('.next');
      
      prev.addEventListener('click', () => mySiema.prev());
      next.addEventListener('click', () => mySiema.next());
};
    
export {carousel};