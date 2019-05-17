const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-cocktail');
  console.log(navbar);
  const cocktails = document.querySelector('.cocktails');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        console.log(navbar.classList.add('navbar-cocktail-white'));
      } else {
        console.log(navbar.classList.remove('navbar-cocktail-white'));
      }
    });
  }
  if (cocktails) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        cocktails.classList.add('link-cocktails-white');
      } else {
        cocktails.classList.remove('link-cocktails-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
