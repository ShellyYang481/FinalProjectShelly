$("#login-form").on("submit", function (e) {
  e.preventDefault();
  $("#emailBlock > span").remove();
  let inputNode = $("#clientInputEmail");
    let hasEmail = isEmailExits(inputNode.val());

    hasEmail.then((resp) => {
        if (resp) {
            $("#login-form").unbind();
            $("#login-form").submit();
        } else {
            // console.log("no");
          let errNode = document.createElement("span");
          errNode.innerText = "查無此用戶, 請確認電子郵件";
          errNode.style.color = "#ff4757";
          $("#clientInputEmail").css("border", "1px solid #ff4757");
          $("#emailBlock").append(errNode);
        }
    })
});

// Check if email exits
async function isEmailExits(email) {
  let url = "http://localhost:8080/FinalProject/api/v1/isEmailExits";
  let data = {
    clientEmail: email,
  };

  let result = await fetch(url, {
    method: "POST", 
    body: JSON.stringify(data),
    headers: new Headers({
      "Content-Type": "application/json",
    }),
  })
    .then((response) => response.json())
    .then(function (res) {
      console.log(res);
      if (res == "Y") {
        return true;
      } else {
        return false;
      }
    });
  return result;
}