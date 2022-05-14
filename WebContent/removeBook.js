function validate(){
    var bookName = document.getElementById("bookName").value;
    
    var valid = true;
    
    if(bookName.length<=0){
        alert("Don't leave the field empty!");
        valid = false;
    }
    
    return valid;
};
 