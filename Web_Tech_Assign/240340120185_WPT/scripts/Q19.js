$(document).ready(function()
{
    $("#btn").click(function(){

        var num=Number($("#str").val());
        console.log(num);
        //sumOfDigits(num);

        if(num<0 || num>1000)
        {
                $("#span").html("Entered number is out of range");
        } 
        else
        {
            sumOfDigits(num);
        }
    })
    function sumOfDigits(num)
    {
        var sum=0;
        while(num>0)
        {
                sum=sum+(num%10);
                num=Math.floor(num/10);
        }
        console.log(sum);
        $("#span").html("Sum of digits: "+sum);
    }
})