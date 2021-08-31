function getCookie(name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(";").shift();
}

const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);

let clientData = {
  clientID: urlParams.get("cid"),
  clientName: "",
  clientStage: "",
  clientEmail: "",
  clientPhone: "",
  clientRegion: "",
  clientZipCode: "",
  clientAddress: "",
  inchargeEmp: "",
};

let commentInput = {
  title: "",
  comment: "",
  clientID: urlParams.get("cid"),
  empID: getCookie("empUUID"),
};

let profileVM = new Vue({
  el: "#mainPage",
  data: {
    cl: clientData,
    inputComment: commentInput,
    stageList: [
      "New",
      "Attempt To Engaged",
      "Engaged",
      "Test Drive",
      "Follow Up",
      "Long Term",
      "Ordered",
      "Closed",
    ],
  },
  created: function () {
    this.cl.clientStage = getCookie("clientStage");
    clientData.clientName = $("#clientName").text();
    clientData.clientEmail = $("#clientEmail").text();
    clientData.clientPhone = $("#clientPhone").text();
    clientData.clientRegion = $("#clientRegion").text();
    clientData.clientZipCode = $("#clientZipCode").text();
    clientData.clientAddress = $("#clientAddress").text();
    clientData.inchargeEmp = $("#inchargeEmp").text();
  },
  watch: {
    cl: {
      handler: "showStage",
      deep: true,
      immediate: true,
    },
  },
  methods: {
    showStage() {
      console.log("hi");
      let index;
      for (let i = 0; i < this.stageList.length; i++) {
        if (this.cl.clientStage === this.stageList[i]) {
          index = i;
        }
      }
      let stepsNode = document.querySelectorAll(".step");

      for (let k = 0; k < stepsNode.length; k++) {
        stepsNode[k].classList.remove("selected");
        stepsNode[k].classList.remove("completed");
      }

      for (let j = 0; j < index + 1; j++) {
        stepsNode[j].classList.add("selected");
        if (j < index) {
          stepsNode[j].classList.add("completed");
        }
      }
    },
    changeStage(index) {
      let selectedStage = this.stageList[index];
      this.cl.clientStage = selectedStage;

      // TODO POST REQUEST to change Stage in db.
    },
  },
});
