const initUpdateNavbarOnScrollBis = () => {
  const navbar = document.querySelector('.navbar-cocktail-bis');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        console.log(navbar.classList.add('navbar-cocktail-white'));
      } else {
        console.log(navbar.classList.remove('navbar-cocktail-white'));
      }
    });
  }
}

export { initUpdateNavbarOnScrollBis };
