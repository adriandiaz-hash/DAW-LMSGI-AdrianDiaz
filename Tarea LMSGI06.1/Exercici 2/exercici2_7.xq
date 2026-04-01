let $mitjana := avg(collection("CLASSICMODELS_BD")//check/xs:double(amount))
return round($mitjana)