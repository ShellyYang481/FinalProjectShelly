$("#clientInputEmail").on("change", function () {
    $("#emailBlock > span,img").remove();
  let inputNode = $("#clientInputEmail");
  let clientInputEmail = inputNode.val();

  let result = isEmailExits(clientInputEmail);

  result.then((resp) => {
    if (resp) {
      let errNode = document.createElement("span");
      errNode.innerText = "此電子郵件已被使用過, 請嘗試別的信箱";
      errNode.style.color = "#ff4757";
      $("#clientInputEmail").css("border", "1px solid #ff4757");
      $("#emailBlock").append(errNode);
      $('#input-submit').attr('disabled', 'true');
    } else {
        $("#clientInputEmail").css("border", "1px solid #2ed573");
        let correctNode = document.createElement("img");
        correctNode.setAttribute('src', './images/correct.png');
        correctNode.style.width = '15px';
        $("#label-email").append(correctNode);
        $('#input-submit').removeAttr("disabled");
    }
  });
});

// Check if email exits
async function isEmailExits(email) {
  let url = "http://localhost:8080/FinalProject/api/v1/isEmailExits";
  let data = {
    clientEmail: email,
  };

  let result = await fetch(url, {
    method: "POST", // or 'PUT'
    body: JSON.stringify(data), // data can be `string` or {object}!
    headers: new Headers({
      "Content-Type": "application/json",
    }),
  })
    .then((response) => response.json())
    .then(function (res) {
      console.log(res);
      // N
      if (res == "Y") {
        return true;
      } else {
        return false;
      }
    });
  return result;
}
