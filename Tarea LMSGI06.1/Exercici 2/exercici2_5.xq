let $mitjana := avg(collection("CLASSICMODELS_BD")//check/xs:double(amount))
for $xec in collection("CLASSICMODELS_BD")//check
where xs:double($xec/amount) > $mitjana
order by $xec/@number ascending
return data($xec/@number)