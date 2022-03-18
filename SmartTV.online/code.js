//clock//
var rndvar = setInterval(function() {
  SecondRefresh();
}, 1000);

function SecondRefresh() {
  var Zeit = new Date();
  document.getElementById("clock").innerHTML = Zeit.toLocaleTimeString();
}
//Day//

var randvar = setInterval(function() {
  Refresh();
}, 1000);

function Refresh(){
  var today = new Date();
  var date1 = today.getDate()+'.'+(today.getMonth()+1)+'.'+today.getFullYear();
  document.getElementById("Datum").innerHTML = "Today's Date is the"+ " " + date1;
}
