window.onload = function () {
  const list = document.querySelectorAll(".list");
  function activeLink() {
    list.forEach((item) => item.classList.remove("active"));
    this.classList.add("active");
  }

  list.forEach((item) => item.addEventListener("click", activeLink));

  const navbar = document.querySelector(".nav-container");
  const rightContent = document.querySelector(".content-container");

  function resizeContentSmall() {
    rightContent.style.left = "310px";
  }

  function resizeContentBig() {
    rightContent.style.left = "80px";
  }

  navbar.addEventListener("mouseenter", resizeContentSmall);
  navbar.addEventListener("mouseleave", resizeContentBig);
};
