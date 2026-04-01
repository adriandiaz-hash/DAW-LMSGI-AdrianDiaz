for $xec in collection("CLASSICMODELS_BD")//check
where $xec/customer/@customerNumber = "103"
return $xec/@number