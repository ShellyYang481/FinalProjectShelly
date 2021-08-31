let getCookie = function (name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(";").shift();
};

let profileVM = new Vue({
  el: "#page",
  data: {
    client: {
      name: "郭台銘",
      stage: "Test Drive",
      email: "yumyu@tesla.com",
      phone: "0954877511",
      city: "台中市",
      town: "北區",
      address: "和平路45號",
      inchargeEmployeeName: "游聿民",
      inchargeEmployeeID: "2IOuE2cP",
      historyActivity: [
        {
          title: "第一次打給他",
          type: "call",
          content:
            "聯亞疫苗於6月30日申請EUA審查，指揮官陳時中證實，昨日已開完專家會議，不過很遺憾的是，審查並沒有通過，消息一出使得目前唯一還在興櫃市場交易的疫苗股聯亞藥（6562）股價大跌，股價急殺再度跌破200元，短短2分鐘跌幅超過16％，最低跌至140元，高低點價差近70元。",
          emp: "游聿民",
          date: "2021-08-01",
        },
        {
          title: "試駕完",
          type: "testDrive",
          content:
            "Netflix 今天公開了 8 月 23 日開播的動畫《獵魔士：狼之惡夢》的最新預告片，本次公開了日文配音版本，並配上由 ROTTENGRAFFTY 演唱的動畫預告主題曲「Hallelujah」，曝光更多熱血刺激的戰鬥場面。",
          emp: "吳宗憲",
          date: "2021-07-10",
        },
        {
          title: "第一次來",
          type: "walkIn",
          content:
            "這部前傳動畫電影《獵魔士：狼之惡夢》，將帶領玩家探索傑洛特的導師維瑟米爾故事。動畫故事描述年輕的維瑟米爾逃離貧窮的生活，成為一名高傲勇猛的獵魔士，獵殺惡魔並賺取報酬。在大陸出現一股新的怪物勢力之後，維瑟米爾踏上危機四伏的的旅程，也不得不面對自己有如惡夢般的過往。",
          emp: "孫聖西",
          date: "2021-07-12",
        },
        {
          title: "晚上打給我",
          type: "note",
          content:
            "塔利班進入喀布爾（Kabul）之際，阿富汗總統甘尼（Ashraf Ghani）據傳已逃往塔吉克。此外，塔利班政治辦公室發言人則宣稱，阿富汗戰爭已經結束，統治和政權形式很快就會明朗化。。",
          emp: "蔡小虎",
          date: "2021-07-21",
        },
      ],
    },
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
    clientForm: {
      showName: false,
      showPhone: false,
      showCity: false,
      showTown: false,
      showAddress: false,
      showEmployeeName: false,
    },
    tabArea: {
      showActivity: true,
      showHistory: false,
      activityForm: {
        title: "",
        type: "note",
        content: "",
      },
    },
  },
  watch: {
    client: {
      handler: "showStage",
      deep: true,
      immediate: true,
    },
  },
  methods: {
    showToggle(target) {
      if (target == "name") {
        this.clientForm.showName = !this.clientForm.showName;
      }
      if (target == "phone") {
        this.clientForm.showPhone = !this.clientForm.showPhone;
      }
      if (target == "city") {
        this.clientForm.showCity = !this.clientForm.showCity;
      }
      if (target == "town") {
        this.clientForm.showTown = !this.clientForm.showTown;
      }
      if (target == "address") {
        this.clientForm.showAddress = !this.clientForm.showAddress;
      }
      if (target == "emp") {
        this.clientForm.showEmployeeName = !this.clientForm.showEmployeeName;
      }
    },
    showStage() {
      let index;
      for (let i = 0; i < this.stageList.length; i++) {
        if (this.client.stage === this.stageList[i]) {
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
      this.progress(index);
    },
    changeStage(index) {
      var yes = confirm("你確定要修改銷售階段嗎？");
      let self = this;
      if (yes) {
        let clientID = getCookie("cliID");
        $.ajax({
          type: "POST",
          url: `/FinalProject/api/v1/sales/updateClientStage?cid=${clientID}&newStage=${this.stageList[index]}`,
          contentType: "application/json",
          dataType: "json",
          success: function (res) {
            if (res == "fail") {
              return false;
            }
            let selectedStage = res;
            self.progress(index);
            self.client.stage = selectedStage;
          },
          error: function () {
            alert("Fail.");
          },
        });
      } else {
        return;
      }
    },
    progress(stepNum) {
      let steps = [];
      let p = stepNum * 14.2;
      let els = document.getElementsByClassName("step");
      document.getElementsByClassName("percent")[0].style.width = `${p}%`;
      steps.forEach((e) => {
        if (e.id === stepNum) {
          e.classList.add("selected");
          e.classList.remove("completed");
        }
        if (e.id < stepNum) {
          e.classList.add("completed");
        }
        if (e.id > stepNum) {
          e.classList.remove("selected", "completed");
        }
      });
    },
    showTab(name) {
      this.tabArea.showActivity = false;
      this.tabArea.showHistory = false;
      if (name == "history") {
        this.tabArea.showHistory = true;
      } else {
        this.tabArea.showActivity = true;
      }
    },
    formated(type) {
      if (type == "walkIn") {
        return "Walk In";
      }
      if (type == "testDrive") {
        return "Test Drive";
      }
      if (type == "call") {
        return "Call";
      }
      if (type == "note") {
        return "Notes";
      }
      return "";
    },
    submitInfoForm() {
      let clientID = getCookie("cliID");
      let formData = {
        name: this.client.name,
        address: this.client.address,
        city: this.client.city,
        email: this.client.email,
        phone: this.client.phone,
        town: this.client.towns,
        inchargeEmployeeID: this.client.inchargeEmployeeID,
      };
      $.ajax(`/FinalProject/api/v1/sales/updateClientInfo?cid=${clientID}`, {
        type: "POST",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(formData),
        success: function (res) {
          console.log(res);
        },
        error: function () {
          console.log("failure");
        },
      });
    },
    submitActivity() {
      let self = this;
      let clientID = getCookie("cliID");
      let formData = {
        cid: clientID,
        eid: self.client.inchargeEmployeeID,
        title: self.tabArea.activityForm.title,
        type: self.tabArea.activityForm.type,
        comment: self.tabArea.activityForm.content,
      };
      $.ajax("/FinalProject/api/v1/saveClientActivity", {
        type: "POST",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(formData),
        success: function (res) {
          if (res == "OK") {
            self.tabArea.activityForm.title = "";
            self.tabArea.activityForm.type = "";
            self.tabArea.activityForm.content = "";
            alert("ok");
          }
        },
        error: function () {
          console.log("failure");
        },
      });
    },
    loadNewActivities() {
      let self = this.client;
      let clientID = getCookie("cliID");
      let processDefaultClientActivity = function (data) {
        console.log(data);
        let newActivities = [];
        for (let i = 0; i < data.length; i++) {
          let curActivity = {
            title: data[i].title,
            type: data[i].actType,
            content: data[i].comment,
            emp: data[i].employee.fullName,
            date: data[i].curDate,
          };
          newActivities.push(curActivity);
        }
        self.historyActivity = newActivities;
      };
      $.ajax({
        type: "get",
        url: `/FinalProject/api/v1/sales/queryActivity?cid=${clientID}`,
        contentType: "application/json",
        dataType: "json",
        success: function (res) {
          processDefaultClientActivity(res);
        },
        error: function () {
          console.log("failure");
        },
      });
    },
  },
  watch: {
    client: {
      handler: "showStage",
      deep: true,
      immediate: true,
    },
  },
  beforeMount: function () {
    let self = this.client;
    this.loadNewActivities();

    let processDefaultCLientData = function (data) {
      self.address = data.fullAddress;
      self.city = data.city;
      self.email = data.clientEmail;
      self.inchargeEmployeeID = data.inchargeEmployee.id;
      self.inchargeEmployeeName = data.inchargeEmployee.fullName;
      self.name = data.fullName;
      self.phone = data.phone;
      self.stage = data.saleStage;
      self.town = data.town;
    };

    // let processDefaultClientActivity = function (data) {
    //   console.log(data);
    //   let newActivities = [];
    //   for (let i = 0; i < data.length; i++) {
    //     let curActivity = {
    //       title: data[i].title,
    //       type: data[i].actType,
    //       content: data[i].comment,
    //       emp: data[i].employee.fullName,
    //       date: data[i].curDate,
    //     };
    //     newActivities.push(curActivity);
    //   }

    //   self.historyActivity = newActivities;
    // };

    let clientID = getCookie("cliID");
    $.ajax({
      type: "get",
      url: `/FinalProject/api/v1/sales/getClientInfo?cid=${clientID}`,
      contentType: "application/json",
      dataType: "json",
      success: function (res) {
        processDefaultCLientData(res);
      },
      error: function () {
        console.log("failure");
      },
    });
    // $.ajax({
    //   type: "get",
    //   url: `/FinalProject/api/v1/sales/queryActivity?cid=${clientID}`,
    //   contentType: "application/json",
    //   dataType: "json",
    //   success: function (res) {
    //     processDefaultClientActivity(res);
    //   },
    //   error: function () {
    //     console.log("failure");
    //   },
    // });
  },
});
