function termekarak(){
    var sqlText = "SELECT SUM(price) FROM Products"; 
    sql(sqlText);
}