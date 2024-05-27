// function show()
// {
//     const element = document.getElementById("myId");
//     console.log(element); // Output: <div id="myId">...</div>
//     console.log("ELEMENT TYPE IS  "+typeof(element));
//     const memberNames = document.getElementById("names");
//     console.log("TYPE IS  "+typeof(memberNames));
//     // for(let i=0;i<memberNames.length;i++)
//     //     {
// const commaSeparatedString = memberNames.join(',').toUpperCase();
// // }
// document.getElementById(showNm).innerHTML=commaSeparatedString;
// console.log(commaSeparatedString); // Output: "ALICE, BOB, CHARLIE, DAVID"
// }


function show() {
    const memberNames = document.getElementById("names");
    const commaSeparatedString = memberNames.textContent.split(' ').join(',').toUpperCase();
    const showNm = document.getElementById("showNm");
    showNm.innerHTML = commaSeparatedString;
    console.log(commaSeparatedString); // Output: "ALICE, BOB, CHARLIE, DAVID"
}