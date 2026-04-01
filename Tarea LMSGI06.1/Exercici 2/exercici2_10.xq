for $e in collection("CLASSICMODELS_BD")//employee
where $e/lastName = "Patterson"
return $e/@employeeNumber