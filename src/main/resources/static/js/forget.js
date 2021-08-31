$(function() {

	let inputNode = $("#clientInputEmail");

	// if the email exists
	inputNode.change(function() {
		$("#email-container > span").remove();
		isEmailExits(inputNode.val());
	})


});


function isEmailExits(email) {
	let inputNode = $("#clientInputEmail");
	let url = 'http://localhost:8080/FinalProject/isEmailExits';
	let data = {
		clientEmail: email,
	};

	fetch(url, {
		method: "POST", // or 'PUT'
		body: JSON.stringify(data), // data can be `string` or {object}!
		headers: new Headers({
			"Content-Type": "application/json",
		}),
	}).then((response) => response.json())
		.then(function(res) {
			console.log(res);
			if (res == "Y") {
				inputNode.css("border", "1px solid #2ed573");
				insertMessage("Y");
			} else {
				inputNode.css("border", "1px solid #ff4757");
				insertMessage("N");
			}
		})
}


// Insert message
function insertMessage(message) {
	let messageNode = document.createElement("span");
	let targetNode = $("#email-container");
	let submitbtn = $("#input-submit");
	
	if (message == 'Y') {
		messageNode.innerText = "OK";
		messageNode.style.color = '#2ed573';
		targetNode.append(messageNode);
		submitbtn.attr('disabled', false);
	} else if (message == 'N') {
		messageNode.innerText = "查無此 Email";
		messageNode.style.color = '#ff4757';
		targetNode.append(messageNode);
		submitbtn.attr('disabled', true);
	} else {
		return false;
	}
}