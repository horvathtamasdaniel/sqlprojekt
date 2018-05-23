function rendelesarossz() {
    var sqlText = "SELECT SUM(products.price) FROM orders JOIN products ON orders.productid=products.prid";
    sql(sqlText);
}