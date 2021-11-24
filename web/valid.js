function Valid(){

	// Make quick references to our fields
	var name =  document.getElementById('name');
	var email =  document.getElementById('email');
	var add =  document.getElementById('add');
	var idproof =  document.getElementById('idproof');
	var gender =  document.getElementById('gender');
	var cin =  document.getElementById('cin');
	var cout =  document.getElementById('cout');
	var room =  document.getElementById('room');
	var box =  document.getElementById('box');
	var idno =  document.getElementById('idno');
	var p1 =  document.getElementById('p1');
	var zip =  document.getElementById('zip');
	var state =  document.getElementById('state');
	var guest =  document.getElementById('guest');
	var mobile =  document.getElementById('mobile');
	//  to check empty form fields.

    if(name.value.length == ""){
		document.getElementById('head').innerText = "* All fields are mandatory *"; 
		name.focus();
		return false;
	}else if(inputAlphabet(name, "* For your name please use alphabets only *")){
		
		if (mno(mobile, 10, "* Please enter mobile number *")){
			
			if(emailValidation(email, "* Please enter a valid email address *")){

				if(textNumeric(zip, 6,"* Please enter a valid zip code *")){
						
		        	if(textAlphanumeric(add, "* For Address please use numbers and letters *")){
				            
		        		if(trueSelection(idproof, "* Please Choose any one option")){
					
					  		if (selectgender(gender,"* Please Choose any one option")) {
					  			
					  			if (checkin(cin,"* Please Choose check-in date")) {
					  				
					  				if (checkout(cout,"* Please Choose check-out date")) {

					  					if (sroom(room,"* Please Choose any one option")) {

					  						if (air(p1,"* Please Choose any one option")) {

					  							if (noguest(guest,"* Please give number of guest")) {

					  								if (checkbox(box,"* Please fill the checkbox")) {

					  									return true;

					  								}

					  							}

					  						}

					  					}

					  				}

					  			}

					  		}

						}

					}

				}

			}

		}
	
	}
	
	return false;
	
}

function inputAlphabet(inputtext, alertMsg){
	var alphaExp = /^[/ /a-zA-Z]+$/;
	if(inputtext.value.match(alphaExp)){
		return true;
	}else {
		document.getElementById('a1').innerText = alertMsg;
		inputtext.focus();
		return false;
	}
}

function mno(inputtext, min, alertMsg){
	var numericExpression = /^[0-9]{10}$/;
	var uInput = inputtext.value;
	if(uInput.length = min && inputtext.value.match(numericExpression)){
		return true;
	}else{
		document.getElementById('a12').innerText = alertMsg;
		inputtext.focus();
		return false;
	}
}


function emailValidation(inputtext, alertMsg){
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if(inputtext.value.match(emailExp)){
		return true;
	}else{
		document.getElementById('p3').innerText = alertMsg; //this segment displays the validation rule for email
		inputtext.focus();
		return false;
	}
}

function emailValidation(inputtext){
	var x=document.email.email.value;  
	var atposition=x.indexOf("@");  
	var dotposition=x.lastIndexOf(".");  
	if (atposition < 1 || dotposition < atposition+2 || dotposition+2 >= x.length){  
  		document.getElementById('a2').innerText ="Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition;  
  		return false;  
  	}else{
  		return true;
  	
}

function textAlphanumeric(inputtext, alertMsg){
	var alphaExp = /^[/ /,/-/0-9a-zA-Z]+$/;
	if(inputtext.value.match(alphaExp)){
		return true;
	}else{
		document.getElementById('a3').innerText = alertMsg; 
		inputtext.focus();
		return false;
	}
}

function textNumeric(inputtext,min, alertMsg){
	var numericExpression = /^[0-9]{6}$/;
	if(uInput.length = min && inputtext.value.match(numericExpression)){
		return true;

	}else{
		document.getElementById('a13').innerText = alertMsg;  
		inputtext.focus();
		return false;
		
	}
}


function noguest(inputtext, alertMsg){
	var numericExpression = /^[0-8]{1}$/;
	if(inputtext.value.match(numericExpression)){
		return true;
	}else{
		document.getElementById('a14').innerText = alertMsg; 
		inputtext.focus();
		return false;
	}
}







function checkin(inputtext, alertMsg){
	var ch = /^([0-9]{2})+[/]+([0-9]{2})+[/]+([0-9]{4})$/;
	if(inputtext.value.match(ch) == ""){
		document.getElementById('a7').innerText = alertMsg;
		inputtext.focus();
		return false;
	}else{
		return true;
	}	
}


function checkout(inputtext, alertMsg){
	var ch = /^([0-9]{2})+[/]+([0-9]{2})+[/]+([0-9]{4})$/;
	if(inputtext.value.match(ch) == ""){
		document.getElementById('a8').innerText = alertMsg;
		inputtext.focus();
		return false;
	}else{
		return true;
	}	
}








function trueSelection(inputtext, alertMsg){
	if(inputtext.value == "--select--"){
		document.getElementById('a4').innerText = alertMsg; 
		inputtext.focus();
		return false;
	}else{
		return true;
	}
}



}


function sroom(inputtext, alertMsg){
	if(inputtext.value == "--select--"){
		document.getElementById('a9').innerText = alertMsg; 
		inputtext.focus();
		return false;
	}else{
		return true;
	}
}


function air(inputtext, alertMsg){
	if(inputtext.value == "--select--"){
		document.getElementById('a10').innerText = alertMsg; 
		inputtext.focus();
		return false;
	}else{
		return true;
	}
}



function gender(inputtext, alertMsg){
	if(inputtext.value == "--select--"){
		document.getElementById('a6').innerText = alertMsg; 
		inputtext.focus();
		return false;
	}else{
		return true;
	}
}


function checkbox(inputtext, alertMsg){
	var ch=document.getElementById('box').checked;
	if (ch) {
		return true;
	}else{
		document.getElementById('a11').innerText = alertMsg;
		inputtext.focus();
		return false;
	}
}
