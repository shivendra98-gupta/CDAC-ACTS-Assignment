var rst = "";
//name validation
function validateName(inp, msg) {
  var n = document.getElementById(inp).value;
  const isValid = /^[a-zA-Z\s]*$/.test(n);
  if (n.trim().length < 2 || n.trim().length > 10 || !isValid) {
    document.getElementById(msg).innerHTML = "Invalid Name";
    return false;
  } else {
    document.getElementById(msg).innerHTML = "";
    rst += "<h4>You Entered</h4>";
    rst += `Name : ${n}<br>`;
    return true;
  }
}

//email validation
function validateEmail(inp, msg) {
  var em = document.getElementById(inp).value;
  const isValid = em.includes("@") && em.includes(".");
  if (!isValid) {
    document.getElementById(msg).innerHTML = "Invalid Email";
    return false;
  } else {
    document.getElementById(msg).innerHTML = "";
    rst += `Email : ${em}<br>`;
    return true;
  }
}
//email confirmation
function confirmEmail(inp, inp2, msg) {
  var em = document.getElementById(inp).value;
  var cm = document.getElementById(inp2).value;
  if (em !== cm) {
    document.getElementById(msg).innerHTML = "Check email address";
    return false;
  } else {
    document.getElementById(msg).innerHTML = "";
    return true;
  }
}

//radio button
function validateRadio(inp, msg) {
  var radio = document.getElementsByName(inp);
  for (let i = 0; i < radio.length; i++) {
    if (radio[i].checked) {
      document.getElementById(msg).innerHTML = "";
      rst += `Gender : ${radio[i].value}<br>`;
      return true;
    }
  }
  document.getElementById(msg).innerHTML = "Please Select";
  return false;
}

//check box
function validateCheck(inp, msg) {
  var box = document.getElementsByName(inp);
  var count = 0;
  var selectedValues = [];
  for (let i = 0; i < box.length; i++) {
    if (box[i].checked) {
      count++;
      selectedValues.push(box[i].value);
    }
  }
  if (count === 0) {
    document.getElementById(msg).innerHTML = "Select at least one";
    return false;
  }
  document.getElementById(msg).innerHTML = "";
  rst += `Favourite Food : ${selectedValues.join(", ")}<br>`;
  return true;
}

//number validation
function validateNumber(inp, msg) {
  var num = parseInt(document.getElementById(inp).value);
  if (num === null || isNaN(num) || num < 1 || num > 100) {
    document.getElementById(msg).innerHTML = "Between 1 and 100";
    return false;
  } else {
    document.getElementById(msg).innerHTML = "";
    rst += `Lucky No. : ${num}<br>`;
    return true;
  }
}

//date
function validateDOB() {
  var dob = document.getElementById("dob").value;
  if (dob === "") {
    document.getElementById("doberr").innerHTML = "DOB can't empty";
    return false;
  }
  rst += `DOB : ${dob}<br>`;
  document.getElementById("doberr").innerHTML = "";
  return true;
}

function validateCredential() {
  rst = "";
  var name = validateName("name", "nameerr");
  var email = validateEmail("email", "emailerr");
  var cemail = confirmEmail("email", "cemail", "cemailerr");
  var radio = validateRadio("gender", "gendererr");
  var num = validateNumber("luck", "luckerr");
  var che = validateCheck("food", "fooderr");
  var dob = validateDOB("dob", "doberr");
  document.getElementById("result").innerHTML = rst;
  openNewWindow();
  return name && email && cemail && radio && num && che && dob;
}

function openNewWindow() {
  var formData = {
    name: document.getElementById("name").value,
    email: document.getElementById("email").value,
    gender: document.querySelector('input[name="gender"]:checked').value,
    food: Array.from(document.querySelectorAll('input[name="food"]:checked'))
      .map((el) => el.value)
      .join(", "),
    luckyNumber: document.getElementById("luck").value,
    dob: document.getElementById("dob").value,
  };

  var newWindow = window.open("", "_blank");
  newWindow.document.write("<h2>Form Data</h2>");
  newWindow.document.write(`<p>Name: ${formData.name}</p>`);
  newWindow.document.write(`<p>Email: ${formData.email}</p>`);
  newWindow.document.write(`<p>Gender: ${formData.gender}</p>`);
  newWindow.document.write(`<p>Favourite Food: ${formData.food}</p>`);
  newWindow.document.write(`<p>Lucky Number: ${formData.luckyNumber}</p>`);
  newWindow.document.write(`<p>Date of Birth: ${formData.dob}</p>`);
}
