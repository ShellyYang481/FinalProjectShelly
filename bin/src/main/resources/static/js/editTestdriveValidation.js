let flagDate = true;
let flagCarmod = true;
let flagLoc = true;
let flagLocsit = true;
// let flagSales = true;
let flagName = true;
let flagGender = true;
let flagConTim = true;
let flagMail = true;
let flagTel = true;


//  date
function checkDate(){
    
    let dateObj = document.getElementById("date");
    let dateObjDate = new Date(dateObj.value)
    let today = new Date()

    // 選擇日為空值，則"請選擇日期"
    if(dateObj.value == ""){
        console.log("dateObj.value = "+ dateObj.value)
        document.getElementById("dateCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請選擇日期";
        flagDate = false;
    // 選擇日<=今天，則...   
    } else if(dateObjDate.getTime() <= today.getTime()){
        console.log("select day = "+dateObjDate.getTime())
        console.log("today = "+today.getTime())
        document.getElementById("dateCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>日期不能早於一日內";
        flagDate = false;
    // 此外，移除錯誤訊息
    } else{
        document.getElementById("dateCheck").innerHTML = "";
        flagDate = true;
    }

}



// carmod

function checkCarmod(){
    let carmodObj = document.getElementById("carmod");

    // 如果 carmod 的值跟預設一樣，錯誤
    if (carmodObj.value == document.getElementById("carmoddef").value){
        console.log("carmodObj.value = "+carmodObj.value)
        document.getElementById("carmodCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請選擇車型";
        flagCarmod = false;
    // 反之，移除錯誤訊息
    } else{
        document.getElementById("carmodCheck").innerHTML = "";
        flagCarmod = true;
    }

}



// loc

function checkLoc(){
    let locObj = document.getElementById("loc");

    // 如果 loc 的值跟預設一樣，錯誤
    if (locObj.value == document.getElementById("locdef").value){
        console.log("locObj.value = "+locObj.value)
        document.getElementById("locCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請選擇地區";
        flagLoc = false;
    // 反之，移除錯誤訊息
    } else{
        document.getElementById("locCheck").innerHTML = "";
        flagLoc = true;
    }

}



// locsit

function checkLocsit(){

    let locsitObj = document.getElementById("locsit");

    // 如果 locsit 的值跟預設一樣，錯誤
    if (locsitObj.value == document.getElementById("locsitdef").value){
        console.log("locsitObj.value = "+locsitObj.value)
        document.getElementById("locsitCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請選擇服務據點";
        flagLocsit = false;
    // 反之，移除錯誤訊息
    } else{
        document.getElementById("locsitCheck").innerHTML = "";
        flagLocsit = true;
    }

}



// name

function checkName(){

    let nameObj = document.getElementById("name");

    // 如果 name 的值為空或長度小於2
    if (nameObj.value == "" || nameObj.value.length <= 1){
        console.log("nameObj.value = "+nameObj.value)
        console.log("nameObj.value.length = "+nameObj.value.length)
        document.getElementById("nameCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請輸入姓名(姓名不可小於2個字元)";
        flagName = false;
    } else{
        document.getElementById("nameCheck").innerHTML = "";
        flagName = true;
    }

}


// Gender

function checkGender() {
    // 取得gendCli的 3個元素群組
    let Total_Obj = document.getElementsByName('gendCli');
    // 是否有input的標記，初始為無
    let gendInput=false;
    // 迭代 該群組，若有其中一項被勾選(checked)，input標記改為真
    for (let i = 0; i < Total_Obj.length; i++) {
        if (Total_Obj[i].checked) {
            gendInput=true;
        } 
    }
    // 最終，若input標記為假，不OK；若為真OK
    if(gendInput == false) {
        gendCheck.innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請點選性別";
        flagGender = false;
    }else{
        gendCheck.innerHTML = "";       
        flagGender = true;
    }
}







//  方便的聯絡時間  checkbox
function checkConTim() {
    // 取得timCli的 3個元素群組
    let Total_Obj = document.getElementsByName('timCli');
    // 是否有input標記，初始為無
    let ConTimInput=false;
    // 迭代 該群組，若有其中一項被勾選(checked)，input標記改為真
    for (let i = 0; i < Total_Obj.length; i++) {
        if (Total_Obj[i].checked) {
            ConTimInput=true;
        } 
    }
    // 最終，若input標記為假，不OK；若為真OK
    if(ConTimInput == false) {
        document.getElementById("contimCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請選擇聯絡時段";
        flagConTim = false;
    }else{
        document.getElementById("contimCheck").innerHTML = "";       
        flagConTim = true;
    }
}



//  E-mail

function checkMail(){

    let mailObj = document.getElementById("mail");
    let re = /^.+@.+$/g;
    // 如果 mail 為空值
    if (mailObj.value == ""){
        console.log("mailObj.value = "+mailObj.value)
        document.getElementById("mailCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請輸入電子信箱";
        flagMail = false;
    //如果 tel 不合規則
    } else if(re.test(mailObj.value) == false){
        console.log("mailObj.value = "+mailObj.value)
        document.getElementById("mailCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請輸入有效的電子信箱";
        flagMail = false;
    }else{
        document.getElementById("mailCheck").innerHTML = "";
        flagMail = true;
    }
}



//  tel

function checkTel(){

    let telObj = document.getElementById("tel");
    let re = /^\d{7,12}$/g;
    // 如果 tel 為空值
    if (telObj.value == ""){
        console.log("telObj.value = "+telObj.value)
        document.getElementById("telCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請輸入連絡電話";
        flagTel = false;
    //如果 tel 不合規則
    } else if(re.test(telObj.value) == false){
        console.log("telObj.value = "+telObj.value)
        document.getElementById("telCheck").innerHTML = "<img src ='/FinalProject//images/error.png' style='width: 22px'>請輸入有效的電話號碼(9-12碼數字)";
        flagTel = false;
    }else{
        document.getElementById("telCheck").innerHTML = "";
        flagTel = true;
    }

}



// idsubmit

document.getElementById("changedForm").addEventListener('submit', function(e){
    e.preventDefault();
    checkAll();
});

function checkAll(){
    checkDate();
    checkCarmod();
    checkLoc();
    checkLocsit();
    
    checkName();
    checkGender();
    checkConTim();
      checkMail();
    checkTel()
    if (flagDate && flagCarmod && flagLoc && flagLocsit && flagName && flagGender && flagConTim && flagMail && flagTel){
        document.getElementById("subchk").innerHTML = "";
        Swal.fire({
            // position: 'top-end',
            icon: 'success',
            title: '修改完成',
            showConfirmButton: false,
            timer: 1500
          });

          setTimeout(() => {
              document.getElementById("changedForm").submit();
          }, 1000);
          
          
        return true;
    } else{
        document.getElementById("subchk").innerHTML = "表單資料不齊全或含有無效內容，請重新檢查";
        Swal.fire('表單資料不齊全或含有無效內容，請重新檢查')
        return false;
    }
}


// loc locsit 連動

let locObj = document.getElementById("loc");

locObj.addEventListener("change",toLocsit)
function toLocsit(){
	document.getElementById("opt11").disabled = "true";
	document.getElementById("opt12").disabled = "true";
	document.getElementById("opt21").disabled = "true";
	document.getElementById("opt22").disabled = "true";
	document.getElementById("opt31").disabled = "true";
	document.getElementById("opt32").disabled = "true";
	document.getElementById("opt41").disabled = "true";
	document.getElementById("opt42").disabled = "true";

    if(locObj.value==document.getElementById("opt1").value){
        document.getElementById("opt11").disabled = "";
        document.getElementById("opt12").disabled = "";


    }else if(locObj.value==document.getElementById("opt2").value){
        document.getElementById("opt21").disabled = "";
        document.getElementById("opt22").disabled = "";


    }else if(locObj.value==document.getElementById("opt3").value){
        document.getElementById("opt31").disabled = "";
        document.getElementById("opt32").disabled = "";

    }else if(locObj.value==document.getElementById("opt4").value){
        document.getElementById("opt41").disabled = "";
        document.getElementById("opt42").disabled = "";

    }
}


// 畫面載入時先執行一次
 $(document).ready(function(){
	   toLocsit();
	    });
	    
	    
	    

