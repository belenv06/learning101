document.addEventListener("turbolinks:load", () => {
  const dropdownPrueba = document.getElementById("dropdown-prueba")
  // const dropdownSmall = document.getElementById("dropdown-small")
  if (dropdownPrueba) {
    dropdownPrueba.addEventListener("click", (event) => {
      dropdownPrueba.classList.toggle("hide-options");
      // dropdownSmall.classList.toggle("hide-options");
    });
  }
});
