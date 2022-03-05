
document.addEventListener("turbolinks:load", () => {
  const inputEmail = document.querySelector(".form-control.email");
  const inputPassword = document.querySelector(".form-control.password");

  if (inputEmail && inputPassword) {
    inputEmail.addEventListener("focus", (event) => {
      const inputWrapper = document.querySelector(".input-wrapper-email");
      inputWrapper.classList.toggle("focus");
    });
    inputEmail.addEventListener("blur", (event) => {
      const inputWrapper = document.querySelector(".input-wrapper-email");
      inputWrapper.classList.toggle("focus");
    });
    inputPassword.addEventListener("focus", (event) => {
      const inputWrapper = document.querySelector(".input-wrapper-password");
      inputWrapper.classList.toggle("focus");
    });
    inputPassword.addEventListener("blur", (event) => {
      const inputWrapper = document.querySelector(".input-wrapper-password");
      inputWrapper.classList.toggle("focus");
    });
  }
});
