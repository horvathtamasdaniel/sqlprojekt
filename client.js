function sql(sqlText) {
    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(xhttp.responseText);
            refreshDocument(JSON.parse(xhttp.responseText));
        }
    };

    xhttp.open("POST", "http://127.0.0.1:3000/sql", true);
    xhttp.withCredentials = true;
    xhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    xhttp.send(JSON.stringify({
        sql: sqlText
    }));
}

//Ebben a függvényben dolgozd fel a kapott objektumot: jelenítsd meg az adatokat az oldalon
function refreshDocument(jsonObject) {
    console.log(jsonObject);
    document.getElementById('content').innerText = JSON.stringify(jsonObject);
}

function kekFules() {
    var sqlText = "SELECT colour, price, handle, prsize, stock FROM products WHERE colour = 'kék' AND handle <> 0";
    sql(sqlText);
}

function nincsKeszlet() {
    var sqlText = "SELECT * FROM products WHERE stock=0";
    sql(sqlText);
}

function tobbDarab() {
    var sqlText = "SELECT Customer.name, COUNT(*) AS darab FROM orders JOIN customer ON customer.id = orders.customerid GROUP BY orders.customerid HAVING COUNT(*) > 1";
    sql(sqlText);
}

function tobbRendelesNap() {
    var sqlText = "SELECT orders.date, COUNT(*) AS darab FROM orders JOIN customer ON customer.id = orders.customerid GROUP BY orders.date HAVING COUNT(*) > 1";
    sql(sqlText);
}

function balatonRendeles() {
    var sqlText = "SELECT DISTINCT customer.name, customer.address FROM orders JOIN customer ON customer.id = orders.customerid WHERE customer.address LIKE '8%'";
    sql(sqlText);
}