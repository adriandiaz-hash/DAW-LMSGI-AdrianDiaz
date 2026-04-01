let $clients := ("103", "112")
for $xec in collection("CLASSICMODELS_BD")//check
where $xec/customer/@customerNumber = $clients
return $xec/@number