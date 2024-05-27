var members=["John","Steve","Ben","Damon","Ian"];
function populateList()
{ 
    str=`<h3><b>Members of my Group are</b></h3>`+
         `<ol id="list" type="1">`
            for(item of members)  
            {
               str+=`<li>${item}</li>`
            }
       str+=`</ol>`    
      document.getElementById("Memberdiv").innerHTML=str;  
}