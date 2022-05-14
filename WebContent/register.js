function validate(){
    var userName = document.getElementById("userName").value;
    var userEmail = document.getElementById("userEmail").value;
    var userPassword = document.getElementById("userPassword").value;
    var userConfirmPassword = document.getElementById("userConfirmPassword").value;
    
    var valid = true;
    
    if(userName.length<=0 || userEmail.length<=0 || userPassword.length<=0 || userConfirmPassword.length<=0){
        alert("Don't leave the field empty!");
        valid = false;
    }
    
    if(userPassword!=userConfirmPassword){
		alert("Password doesn't match!");
        valid = false;
	}
    
    return valid;
};
 