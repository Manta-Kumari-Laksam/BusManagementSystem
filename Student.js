	
	function studentTable(){
		var routeDiv=document.getElementById("routeNoId");
			routeDiv.style.display="none";
		var face=document.getElementById("faceId");
			face.style.display="none";
		var table=document.getElementById("viewTblId").style.display="block";
	}

	function showRoute(){
		var viewDiv=document.getElementById("viewTblId");
			viewDiv.style.display="none";
			var face=document.getElementById("faceId");
			face.style.display="none";
		var route=document.getElementById("routeNoId").style.display="block";
	}
	
	function face(){
		var viewDiv=document.getElementById("viewTblId");
			viewDiv.style.display="none";
		var route=document.getElementById("routeNoId");
			route.style.display="none";
			var face=document.getElementById("faceId").style.display="block";
	}

//	var aud = document.createElement("iframe");
//aud.setAttribute('src', "https://www.youtube.com/watch?v=v_kCWWkwhMM"); // replace with actual file path
//aud.setAttribute('width', '100px');
//aud.setAttribute('height', '100px');
//aud.setAttribute('scrolling', 'no');
//aud.style.border = "0px";
//document.body.appendChild(aud);