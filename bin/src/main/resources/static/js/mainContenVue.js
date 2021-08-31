function getCookie(name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(";").shift();
}

let clientList = [];

let mainVM = new Vue({
  el: "#mainPage",
  data: {
    allClient: clientList,
    curStage: "New",
  },
  computed: {
    clientLengthAll() {
      return this.allClient.length;
    },
    clientCount() {
      let index = 0;
      this.allClient.forEach((element) => {
        if (element.saleStage === this.curStage) {
          index++;
        }
      });
      return index;
    },
    curClientList() {
      let resultList = [];
      this.allClient.forEach((client) => {
        if (client.saleStage === this.curStage) {
          resultList.push(client);
        }
      });
      return resultList;
    },
  },
  methods: {
    changeStage: function (newStage) {
      this.curStage = newStage;
    },
    countClientWithStage: function (stage) {
      let index = 0;
      this.allClient.forEach((element) => {
        if (element.saleStage === stage) {
          index++;
        }
      });
      return index;
    },
    clientUrl: function(id){
		return `http://localhost:8080/FinalProject/inner/searchClient?cid=${id}`;    	
    }
  },
});

function updateClientData(data) {
  if (data != "Fail") {
    mainVM.allClient = data;
  } else {
    mainVM.allClient = [];
  }
}

async function fetchClientDataFromDB() {
  let myID = getCookie("empUUID");
  let url = `http://localhost:8080/FinalProject/api/v1/getClientFrom?uuid=${myID}`;

  await fetch(url, {
    method: "POST",
    headers: new Headers({
      "Content-Type": "application/json",
    }),
  })
    .then((res) => res.json())
    .then((response) => updateClientData(response));
}

fetchClientDataFromDB();
