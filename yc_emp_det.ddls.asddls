@AbapCatalog.sqlViewName: 'YCEMPDET'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Emp Det'
define view YC_EMP_DET 
as select from pa0002 {
    
    pernr as empID,
    nachn as lastName,
    vorna as firstName
    
}
