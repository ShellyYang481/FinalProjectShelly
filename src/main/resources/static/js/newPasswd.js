$(function(){

    let inputNode = $("#input-submit");

    // if the email exists
    inputNode.on('click', function(event) {
        event.preventDefault();
        $("#email-container > span").remove();
        changePasswordMethod();
    })

});

// Insert message
function insertMessage(message) {
    let messageNode = document.createElement("span");
    let targetNode = $("#email-container");
    if (message == 'Y') {
        messageNode.innerText = "更改成功";
        messageNode.style.color = '#2ed573';
        targetNode.append(messageNode);
    } else if (message == 'N') {
        messageNode.innerText = "失敗, 請再試一次";
        messageNode.style.color = '#ff4757';
        targetNode.append(messageNode);
    } else {
        return false;
    }
}

// Change Password 
function changePasswordMethod() {
    let passwdInput = $('#clientInputPasswd').val().trim();
    
    if (passwdInput == "") return false;

    let url = 'http://localhost:8080/FinalProject/changePassword';
    let data = {
      clientPasswd: passwdInput,
    }
    fetch(url, {
      method: 'POST',
      body: JSON.stringify(data),
      headers: new Headers({
        "Content-Type": "application/json",
      }),
    }).then((res) => res.json())
    .then(function(status) {
      if (status == 'Success') {
        insertMessage("Y");
      } else {
        insertMessage("N");
      }
    })
    .catch((err) => console.log(err))
  }