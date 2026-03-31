let $imports_unics :=
for $id_xec in distinct-values(collection("CLASSICMODELS_BD")//check[customer/salesRepEmployeeNumber="1370"]/@number)
let $import := collection("CLASSICMODELS_BD")//check[@number = $id_xec][1]/amount
return xs:double($import)
return sum($imports_unics)