document.addEventListener("turbolinks:load", () => {
  const dropdownPrueba = document.getElementById("dropdown-prueba")
  if (dropdownPrueba) { 
    dropdownPrueba.addEventListener('click', (event) => {
      const options = document.getElementById('option');
      options.classList.toggle('hide-options');
    })
  }
});