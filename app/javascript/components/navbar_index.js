const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-cocktail');
  const cocktails = document.querySelector('.cocktails');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-cocktail-white');
      } else {
        navbar.classList.remove('navbar-cocktail-white');
      }
    });
  }
  if (cocktails) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        cocktails.classList.remove('link-cocktails-white');
      } else {
        cocktails.classList.add('link-cocktails-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

