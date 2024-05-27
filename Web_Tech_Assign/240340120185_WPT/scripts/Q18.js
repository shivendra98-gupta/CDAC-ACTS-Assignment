  $(document).ready(function(){
    $('input[type="radio"]').click(function(){
         if ($(this).is(':checked')){
            switch(this.id)
            {
                case 'main str':
                        console.log(this.id)
                        checkSubString();
                    break;
                case 'upcase':
                        
                        upperCase();
                break;
                case 'lcase':
                        
                        lowerCase();
                break;
                case 'trim':
                        trimSpaces();
                break;
                case 'concate':
                        
                        concatenation();
                break;
                case 'replace':
                        
                        replacestr()
                break;
                
                
            }
           
            
            }
           })
    });
function checkSubString()
{
    console.log("in sub string");
    var word=$("#str1").val().toLowerCase();
    var subword=$("#str2").val().toLowerCase();
    let check=word.includes(subword);
    console.log(check);

    if(check===true)
        {
            $("#span").html(`<h4>${subword} is present in ${word}</h4>`);
        }
     else
        {
            $("#span").html(`<h4>${subword} is not present in ${word}</h4>`);
        }   
}

function upperCase()
{
    console.log("in upper case");
    var newStr=$('#str1').val().toUpperCase();
    $("#span").html(`<h4>Uppercase: ${newStr}</h4>`);

}
function lowerCase()
{
    console.log("in lower case");
    var newStr=$('#str1').val().toLowerCase();
    $("#span").html(`<h4>Lowercase: ${newStr}</h4>`);
}
function trimSpaces()
{
    console.log("in trim case");
    var newStr=$('#str1').val().trim();
    $("#span").html(`<h4>After trim: ${newStr}</h4>`);

}
function concatenation()
{
    console.log("in concatenation case");
    var newStr=$('#str1').val().concat(" "+$('#str2').val());
    $("#span").html(`<h4>After Concatenation: ${newStr}</h4>`);


}

//important for regexp
function replacestr() {
    debugger
    console.log("in replace case");
    let str = $('#str2').val();
    console.log(str);
    let rstr = $('#str3').val();
    let re = new RegExp(`\\b${str}\\b`, "i");
    let newStr = $('#str1').val().replace(re, rstr);
    $("#span").html(`<h4>After replace: ${newStr}</h4>`);
  }