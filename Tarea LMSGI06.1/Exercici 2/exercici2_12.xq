for $xec in collection("CLASSICMODELS_BD")//check
where $xec/customer/@customerNumber = (
    for $c in collection("CLASSICMODELS_BD")//customer
    where $c/customerName = "Atelier graphique"
    return $c/@customerNumber
)
return $xec/@number