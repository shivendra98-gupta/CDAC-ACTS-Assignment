
function calcAreaCircum()
{
  var radius=$('#radius').val();  
//   alert(radius)
  var area=Math.PI*radius*radius;
  var circum=2*Math.PI*radius;
    
     var str=`<span> Area :${area} <br><br>Circumference: ${circum}</span>`;
     $('#mydiv').html(str);
}
