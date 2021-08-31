let fullEmpData = {
  queryString: "",
  employees: "",
};

let vm = new Vue({
  el: "#top-right-bar-container",
  data: fullEmpData,
  watch: {
    queryString: function (oldQueryString, newQueryString) {
      if (this.trimedQuery != "") {
        this.updateEmp();
      } else {
        this.queryString = oldQueryString;
      }
    },
  },
  computed: {
    toShow: {
      get: function () {
        if (this.queryString.trim() != "") {
          return true;
        } else {
          return false;
        }
      },
      set: function (newStatus) {
        this.toShow = newStatus;
      },
    },
    trimedQuery() {
      return this.queryString.trim();
    },
  },
  methods: {
    updateEmp: function () {
      let url = `http://localhost:8080/FinalProject/api/v1/getQueryEmpName?q=${this.trimedQuery}`;

      fetch(url, {
        method: "POST",
        headers: new Headers({
          "Content-Type": "application/json",
        }),
      })
        .then((response) => response.json())
        .then(function (res) {
          if (res != "Fail") {
            fullEmpData.employees = res;
          } else {
            fullEmpData.employees = "";
          }
        });
    },

    closeDiv: function () {
      // this.queryString = "";
    },
  },
});
