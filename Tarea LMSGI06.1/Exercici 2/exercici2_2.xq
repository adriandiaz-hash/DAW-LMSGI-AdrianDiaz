let $clients := collection("CLASSICMODELS_BD")//customer[creditLimit != 'NULL' and xs:decimal(creditLimit) > 1600]/@customerNumber
return count(distinct-values($clients))