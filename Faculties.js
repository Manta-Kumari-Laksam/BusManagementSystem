// Create a "close" button and append it to each list item
window.onload=function(){
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Add a "checked" symbol when clicking on a list item
var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);

 //For Tree view of List
  var caret=document.getElementsByClassName("caret");
  for(var i=0; i < caret.length;i++){
    caret[i].addEventListener("click",function(){
      this.parentElement.querySelector(".nestedLi").classList.toggle("activeLi");
      this.classList.toggle("caretDown"); //not working for single main ul
    });
  }
    // Click on a close button to hide the current list item before the new list is added
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
 }

}

// Create a new list item when clicking on the "Add" button
function newElement() {
  var li = document.createElement("li");
  var inputValue = document.getElementById("myInput").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  }
  document.getElementById("myInput").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

 
  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}
  // Click on a close button to hide the current list item(which is added recently)
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
 }

   //to display dashBoard
  function showDash(){
      document.getElementById("BusNoId").style.display="none";
      document.getElementById("viewTblId").style.display="none";
      document.getElementById("RouteNoId").style.display="none";
      document.getElementById("bgFacultyId").style.display="block";
  }

  //to display edit table
  function showEdit(){
    var bgDiv=document.getElementById("bgFacultyId");
      bgDiv.style.display="none";
    document.getElementById("viewTblId").style.display="block";
     document.getElementById("BusNoId").style.display="none";
      document.getElementById("RouteNoId").style.display="none";
  }

  //to display only the top routes
  function showTopRoute(){
      document.getElementById("bgFacultyId").style.display="none";
      document.getElementById("BusNoId").style.display="none";
      document.getElementById("viewTblId").style.display="none";
      document.getElementById("RouteNoId").style.display="block";
  }

  //to display bus no.
  function showBus(){
      document.getElementById("bgFacultyId").style.display="none";
      document.getElementById("BusNoId").style.display="block";
      document.getElementById("viewTblId").style.display="none";
      document.getElementById("RouteNoId").style.display="none";
  }