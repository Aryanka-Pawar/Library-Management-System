function validate(){
    var bookName = document.getElementById("bookName").value;
    var authorName = document.getElementById("authorName").value;
    var publisherName = document.getElementById("publisherName").value;
    
    var valid = true;
    
    if(bookName.length<=0 || authorName.length<=0||publisherName.length<=0){
        alert("Don't leave the field empty!");
        valid = false;
    }
    
    return valid;
};
 