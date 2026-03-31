let $resultats := for $c in collection("CLASSICMODELS_BD")//customer
                where $c/creditLimit != 'NULL'
                    and xs:decimal($c/creditLimit) >= 1160
                    and xs:decimal($c/creditLimit) <= 1165
                return data($c/customerName)
return distinct-values($resultats)