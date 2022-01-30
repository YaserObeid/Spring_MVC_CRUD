

function dark() {
	  let nav = document.getElementById("nav");
	  let tab = document.getElementById("tab");
	  let icon = document.getElementById("sw");
	  let bg = document.getElementById("bg");
	  if(icon.className === "bi bi-moon-fill text-dark"){
		nav.className = "navbar navbar-dark bg-dark my-5";
	    tab.className = "table table-dark table-striped";
	    icon.className = "bi bi-sun text-light";
	    bg.className = "container bg-dark py-3 mt-5"
	}
	else{
		
		nav.className = "navbar navbar-light bg-light my-5";
	    tab.className = "table table-light table-striped";
	    icon.className = "bi bi-moon-fill text-dark";
	    bg.className = "container bg-light py-3 mt-5"
		
	}
  
}
