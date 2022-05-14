function validate(){
    var userEmail = document.getElementById("userEmail").value;
    
    var valid = true;
    
    if(userEmail.length<=0){
        alert("Don't leave the field empty!");
        valid = false;
    }
    
    return valid;
};
 