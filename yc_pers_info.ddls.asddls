@AbapCatalog.sqlViewName: 'YCPERSINFO'
@AbapCatalog.compiler.CompareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Pers Info'
define view YC_PERS_INFO 
as select from pa0002 {
    
    pernr as empID,
    nachn as lastName,
    vorna as firstName
    
}
