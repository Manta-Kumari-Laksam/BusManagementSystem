		//Opening and closing menu bar
		function openNav() {
			// console.log("check");
		 document.getElementById("calender").style.display="none";
 		 document.getElementById("mySidenav").style.width = "100%";
		}

		function closeNav() {
 		 document.getElementById("mySidenav").style.width = "0";
 		 document.getElementById("calender").style.display="block";
		}

		//Showing hidden Right hand Side Div
		function hiddenRightBusFunc(){	
			var contentDiv=document.getElementById("contentDivId");
			contentDiv.style.display="none";
			var busDiv=document.getElementById("hiddenRightBusId");
			busDiv.style.display="block";

			var closeBtn=document.getElementById("closeBtn1");

			 closeBtn.onclick = function() {
			 	contentDiv.style.display="block";
        		busDiv.style.display="none";
     	 	};
		}

		function hiddenRightStaffFunc(){	
			var contentDiv=document.getElementById("contentDivId");
			contentDiv.style.display="none";
			var staffDiv=document.getElementById("hiddenRightStaffId");
			staffDiv.style.display="block";

			var closeBtn=document.getElementById("closeBtn2");

			 closeBtn.onclick = function() {
			 	contentDiv.style.display="block";
        		staffDiv.style.display="none";
     	 	};
		}

		function hiddenRightStuFunc(){	
			var contentDiv=document.getElementById("contentDivId");
			contentDiv.style.display="none";
			var stuDiv=document.getElementById("hiddenRightStuId");
			stuDiv.style.display="block";

			var closeBtn=document.getElementById("closeBtn3");

			 closeBtn.onclick = function() {
			 	contentDiv.style.display="block";
        		stuDiv.style.display="none";
     	 	};
		}


		//for onscroll footer
		window.onscroll= function(){ ScrollDown(); };
		function ScrollDown(){
			if(document.body.scrollTop > 300 || document.documentElement.scrollTop > 300){
			document.getElementById("footerTextId").classList.add("SlideUp");
			document.getElementById("footerLinksId").classList.add("SlideDown");
			document.getElementById("footerFormId").classList.add("SlideUp");
			}
		}

		//Popup
		function laptop(){
			var pop=document.getElementById("popUpId1");
			pop.classList.toggle("showPopUp");
		}
		function envelop(){
			var pop=document.getElementById("popUpId2");
			pop.classList.toggle("showPopUp");
		}
		function bell(){
			var pop=document.getElementById("popUpId3");
			pop.classList.toggle("showPopUp");
		}
		 
		//for logging out
		function logoutModal(){
	      var lDiv=document.getElementById("logoutDivId");
	      var closeBtn=document.getElementById("closeBtn");
	      var yes=document.getElementById("Yes");
	      var no=document.getElementById("No");

	      lDiv.style.display="block";

	      closeBtn.onclick= function() {
	        lDiv.style.display="none";
	      };
	      yes.onclick = function(){
	        window.location.href = "newLogin.html";
	      };
	      no.onclick= function(){
	        lDiv.style.display="none";
	      };
	      window.onclick= function(event) {
	        if(event.target== logoutDivId){
	          lDiv.style.display="none";
	        }
      };
}






