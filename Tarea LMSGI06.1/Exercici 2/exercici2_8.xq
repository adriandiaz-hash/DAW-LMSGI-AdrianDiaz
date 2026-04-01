let $mitjana := round(avg(collection("CLASSICMODELS_BD")//check/xs:double(amount)))
for $xec in collection("CLASSICMODELS_BD")//check
where xs:double($xec/amount) > $mitjana
order by xs:double($xec/amount) descending
return concat("Compte: ", data($xec/@number), ", Import: ", data($xec/amount), ", Client: ", data($xec/customer/customerName))