let $ids := collection("CLASSICMODELS_BD")//customer[contact/contactLastName = ("King", "Schmitt")]/@customerNumber
for $xec in collection("CLASSICMODELS_BD")//check
where $xec/customer/@customerNumber = $ids
order by xs:double($xec/amount) descending
return $xec/amount