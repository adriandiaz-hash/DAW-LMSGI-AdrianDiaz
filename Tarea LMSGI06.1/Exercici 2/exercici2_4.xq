for $e in collection("CLASSICMODELS_BD")//employee
order by xs:integer($e/@employeeNumber) ascending
return concat($e/firstName, " ", $e/lastName, " - ", $e/@employeeNumber, " - ", data($e/office/City))