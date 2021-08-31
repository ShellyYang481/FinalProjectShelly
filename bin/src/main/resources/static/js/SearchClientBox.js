let fullEmpData = {
  queryString: "",
  employee: {
    fullName: "游聿民",
  },
  clients: [],
};

function getCookie(name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(";").shift();
}

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
    myName() {
      return this.employee.fullName;
    },
  },
  methods: {
    updateEmp: function () {
      let url = `http://localhost:8080/FinalProject/api/v1/queryClient?q=${this.trimedQuery}`;

      fetch(url, {
        method: "POST",
        headers: new Headers({
          "Content-Type": "application/json",
        }),
      })
        .then((response) => (response == null ? false : response.json()))
        .then(function (res) {
          if (res != null) {
            fullEmpData.clients = res;
          } else {
            fullEmpData.clients = "";
          }
        });
    },

    closeDiv: function () {
      this.queryString = "";
    },
  },
});

vm.updateEmp();
