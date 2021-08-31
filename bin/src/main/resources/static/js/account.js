window.onload = function () {
  setUserName();
};

function setUserName() {
  const userNameEl = document.getElementById("username");
  var userNameCookieValue = getCookie("userName");
  userNameEl.innerText = userNameCookieValue;
}

function getCookie(name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(";").shift();
}
