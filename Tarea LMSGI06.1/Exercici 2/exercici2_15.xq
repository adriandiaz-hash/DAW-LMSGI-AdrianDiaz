let $emp_ids := collection("CLASSICMODELS_BD")//employee[lastName = ("Fixter", "King")]/@employeeNumber
for $xec in collection("CLASSICMODELS_BD")//check
where $xec/customer/salesRepEmployeeNumber = $emp_ids
order by xs:double($xec/amount) descending
return concat("ID: ", data($xec/@number), ", Quantitat: ", data($xec/amount))