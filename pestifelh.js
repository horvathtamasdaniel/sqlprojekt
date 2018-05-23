function pestiFelh() {
    var sqlText = "SELECT DISTINCT customer.name, customer.address FROM customer WHERE customer.address LIKE '1%'";
    sql(sqlText);
}