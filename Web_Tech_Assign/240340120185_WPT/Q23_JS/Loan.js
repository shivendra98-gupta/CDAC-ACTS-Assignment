function calculateLoan() {
  var p = parseFloat(document.getElementById("amount").value);
  var r = parseFloat(document.getElementById("interest").value);
  var t = parseFloat(document.getElementById("year").value);

  r = r / (12 * 100); //one month interest
  t = t * 12; //one month period
  if (isNaN(p) || isNaN(r) || isNaN(t)) {
    alert("Invalid inputs");
    return false;
  }

  var emi = (p * r * Math.pow(1 + r, t)) / (Math.pow(1 + r, t) - 1);

  document.getElementById("emi").value = emi.toFixed(2);
  document.getElementById("total").value = (emi * t).toFixed(2);
  document.getElementById("int").value = (emi * t - p).toFixed(2);
}

