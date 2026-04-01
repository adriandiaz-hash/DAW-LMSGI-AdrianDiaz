let $nl := "&#10;"
let $empleats := count(collection("CLASSICMODELS_BD")//employee)
let $clients := count(distinct-values(collection("CLASSICMODELS_BD")//customer/@customerNumber))
let $xecs := count(distinct-values(collection("CLASSICMODELS_BD")//check/@number))
return concat("Número d'empleats: ", $empleats, $nl, "Número de clients: ", $clients, $nl, "Número de xecs: ", $xecs)