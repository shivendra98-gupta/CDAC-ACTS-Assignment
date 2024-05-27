function paymentCalculator()
{
  console.log("in calci");
  // SI=ptr/100
    var amt=Number($('#amount').val());
   
    console.log(amt);
  
    var rate=$('#rate').val();
    
    var year=$('#year').val();

    var SI=Number((amt*rate*year)/100);
    console.log(SI);
  
    var amount=amt+SI;
    var monthlyamt=amount/12;
    console.log(amount);

    $('#monpay').val(monthlyamt);
    $('#total').val(amount);
    $('#interest').val(SI);

    // var str=`<Span>4)4)Your monthly payment will be: ${monthlyamt}
    // // <input type="number" id="monpay" name="monthlypay" value=${monthlyamt}>
    // </span>`
   
    // var span=`<label for="monpay">4)Your monthly payment will be:</label>
    // <input type="number" id="monpay" name="monthlypay" value=${monthlyamt}><br>
    // <label for="total">5)Your total payment will be:</label>
    // <input type="number" id="total" name="totalpay"> <br>            
    // <label for="interest">6)Your total interest payment will be:</label>
    // <input type="number" id="interest" name="interest">`

    // $("table").html(str)
    // document.write(CI);
}