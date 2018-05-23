function rendelesarossz() {
    var sqlText = "SELECT DISTINCT customer.name, customer.address FROM orders JOIN customer ON customer.id = orders.customerid WHERE customer.address LIKE '8%'";
    sql(sqlText);
}