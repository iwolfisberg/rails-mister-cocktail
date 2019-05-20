const initUpdateNavbarOnScrollBis = () => {
  const navbar = document.querySelector('.navbar-cocktail-bis');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        navbar.classList.add('navbar-cocktail-white');
      } else {
        navbar.classList.remove('navbar-cocktail-white');
      }
    });
  }
}

export { initUpdateNavbarOnScrollBis };
