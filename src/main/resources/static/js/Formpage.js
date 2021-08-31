let data = "";

let url = "http://localhost:8080/FinalProject/api/getAllForm";

// fetch(url,{
//     method: "POST",
//     body:"",
//     header: new Headers({
//         "Content-Type": "application/json"
//     }),
// })
// .then((Response) => Response.json())
// .then(function(res){
//     console.log(res)
// })

async function getData() {
    await fetch(url, {
        method: "POST",
        body: "",
        header: new Headers({
            "Content-Type": "application/json"
        }),
    })
    .then((resp) => resp.json())
    .then(function (res) {
        updataData(res);
    })
}


function updataData(data) {
    // tbody_showform
    let trNode = document.createElement("tr");
    let tdNode = document.createElement("td");
    tdNode.innerText = data[0].formId;
    trNode.appendChild(tdNode);
    $('#tbody_showform').append(trNode);
    console.log('done.');
}
getData();

