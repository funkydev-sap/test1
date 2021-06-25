class YCL_COV_PERS_INFO_MPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_MODEL
  create public .

public section.

  types:
          DESKPHONE type /CISCDFB/ST_CONTACT_DSKPH .
  types:
       begin of ts_text_element,
      artifact_name  type c length 40,       " technical name
      artifact_type  type c length 4,
      parent_artifact_name type c length 40, " technical name
      parent_artifact_type type c length 4,
      text_symbol    type textpoolky,
   end of ts_text_element .
  types:
             tt_text_elements type standard table of ts_text_element with key text_symbol .
  types:
          PHONE type /CISCDFB/ST_CONTACT_PHONE .
  types:
          MESSAGE type YCOVS_MESSAGE .
  types:
         TS_ADDRESS type /CISCDFB/ST_ADDRESS_INFO .
  types:
    TT_ADDRESS type standard table of TS_ADDRESS .
  types:
         TS_ADDRESSTYPE type /CISCDFB/ST_CONTACT_ADRTY .
  types:
    TT_ADDRESSTYPE type standard table of TS_ADDRESSTYPE .
  types:
         TS_BANK type /CISCDFB/ST_BANK_INFO .
  types:
    TT_BANK type standard table of TS_BANK .
  types:
      begin of TS_BANKCONTROLKEY,
     CONTROLKEY type C length 2,
     KEYTEXT type C length 60,
  end of TS_BANKCONTROLKEY .
  types:
    TT_BANKCONTROLKEY type standard table of TS_BANKCONTROLKEY .
  types:
      begin of TS_BANKCOUNTRY,
     COUNTRYID type C length 3,
     TEXT type C length 15,
     CURR type C length 5,
  end of TS_BANKCOUNTRY .
  types:
    TT_BANKCOUNTRY type standard table of TS_BANKCOUNTRY .
  types:
      begin of TS_BANKINFO,
     BANKCOUNTRY type C length 3,
     BANK type string,
     CITY type C length 25,
     BRANCHNAME type string,
     ADDRESS type string,
     BRANCHNO type string,
     FIN type string,
     ROUTINGNO type C length 9,
     IFSCCODE type C length 11,
     BANKKEY type string,
  end of TS_BANKINFO .
  types:
    TT_BANKINFO type standard table of TS_BANKINFO .
  types:
      begin of TS_BANKNAME,
     BANKCOUNTRY type C length 3,
     BANKNAMES type string,
  end of TS_BANKNAME .
  types:
    TT_BANKNAME type standard table of TS_BANKNAME .
  types:
         TS_BANKTYPE type /CISCDFB/ST_BANK_TYPE .
  types:
    TT_BANKTYPE type standard table of TS_BANKTYPE .
  types:
      begin of TS_CHEQUEDETAIL,
     BANKCOUNTRY type C length 3,
     BANK type string,
     CITY type C length 25,
     BRANCHNAME type string,
     ADDRESS type string,
     BRANCHNO type C length 5,
     FIN type C length 3,
     BANKKEY type string,
  end of TS_CHEQUEDETAIL .
  types:
    TT_CHEQUEDETAIL type standard table of TS_CHEQUEDETAIL .
  types:
      begin of TS_CHEQUEDETAILIN,
     BANKCOUNTRY type C length 3,
     BANK type string,
     CITY type C length 25,
     BRANCHNAME type string,
     ADDRESS type string,
     IFSCCODE type C length 11,
     BANKKEY type string,
  end of TS_CHEQUEDETAILIN .
  types:
    TT_CHEQUEDETAILIN type standard table of TS_CHEQUEDETAILIN .
  types:
      begin of TS_CHEQUEDETAILUS,
     BANKCOUNTRY type C length 3,
     BANK type string,
     CITY type C length 25,
     BRANCHNAME type string,
     ADDRESS type string,
     ROUTINGNO type C length 9,
     BANKKEY type string,
  end of TS_CHEQUEDETAILUS .
  types:
    TT_CHEQUEDETAILUS type standard table of TS_CHEQUEDETAILUS .
  types:
      begin of TS_CITY,
     BANKCOUNTRY type string,
     CITYNAME type string,
  end of TS_CITY .
  types:
    TT_CITY type standard table of TS_CITY .
  types:
      begin of TS_COMMLANG,
     LANG type C length 2,
     DESC type string,
  end of TS_COMMLANG .
  types:
    TT_COMMLANG type standard table of TS_COMMLANG .
  types:
         TS_CONFIGURATION type /CISCDFB/ST_CONTACT_CONFG .
  types:
    TT_CONFIGURATION type standard table of TS_CONFIGURATION .
  types:
         TS_CONTACTDATA type /CISCDFB/ST_CONTACT_DATA .
  types:
    TT_CONTACTDATA type standard table of TS_CONTACTDATA .
  types:
         TS_COUNTRY type /CISCDFB/ST_COUNTRY .
  types:
    TT_COUNTRY type standard table of TS_COUNTRY .
  types:
      begin of TS_CURRCOUNTRY,
     BANKCOUNTRY type C length 3,
     BANKCURR type C length 5,
  end of TS_CURRCOUNTRY .
  types:
    TT_CURRCOUNTRY type standard table of TS_CURRCOUNTRY .
  types:
      begin of TS_CURRENCY,
     ID type C length 5,
     TEXT type string,
  end of TS_CURRENCY .
  types:
    TT_CURRENCY type standard table of TS_CURRENCY .
  types:
         TS_DEPENDENT type /CISCDFB/ST_DEP_INFO .
  types:
    TT_DEPENDENT type standard table of TS_DEPENDENT .
  types:
         TS_DEPENDENTTYPE type /CISCDFB/ST_DEP_TYPE .
  types:
    TT_DEPENDENTTYPE type standard table of TS_DEPENDENTTYPE .
  types:
         TS_EMERGENCYCONTACT type /CISCDFB/ST_EMERGCON_INFO .
  types:
    TT_EMERGENCYCONTACT type standard table of TS_EMERGENCYCONTACT .
  types:
         TS_EMPLOYEE type /CISCDFB/ST_EMPLOYEE_INFO .
  types:
    TT_EMPLOYEE type standard table of TS_EMPLOYEE .
  types:
         TS_GENDER type /CISCDFB/ST_GENDER .
  types:
    TT_GENDER type standard table of TS_GENDER .
  types:
         TS_MARITALSTATUS type /CISCDFB/ST_MAR_STATUS .
  types:
    TT_MARITALSTATUS type standard table of TS_MARITALSTATUS .
  types:
      begin of TS_PAYMENTMETH,
     BANKCOUNTRY type C length 3,
     PAYENTMETHOD type C length 1,
     PAYMENTTEXT type C length 60,
     ISSUPPORTED type FLAG,
  end of TS_PAYMENTMETH .
  types:
    TT_PAYMENTMETH type standard table of TS_PAYMENTMETH .
  types:
         TS_REGION type /CISCDFB/ST_REGION .
  types:
    TT_REGION type standard table of TS_REGION .
  types:
         TS_RELATIONSHIP type /CISCDFB/ST_RELATIONSHIP .
  types:
    TT_RELATIONSHIP type standard table of TS_RELATIONSHIP .
  types:
         TS_TITLE type /CISCDFB/ST_TITLE .
  types:
    TT_TITLE type standard table of TS_TITLE .

  constants GC_TITLE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Title' ##NO_TEXT.
  constants GC_RELATIONSHIP type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Relationship' ##NO_TEXT.
  constants GC_REGION type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Region' ##NO_TEXT.
  constants GC_PHONE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Phone' ##NO_TEXT.
  constants GC_PAYMENTMETH type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'PaymentMeth' ##NO_TEXT.
  constants GC_MESSAGE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Message' ##NO_TEXT.
  constants GC_MARITALSTATUS type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'MaritalStatus' ##NO_TEXT.
  constants GC_GENDER type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Gender' ##NO_TEXT.
  constants GC_EMPLOYEE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Employee' ##NO_TEXT.
  constants GC_EMERGENCYCONTACT type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'EmergencyContact' ##NO_TEXT.
  constants GC_DESKPHONE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'DeskPhone' ##NO_TEXT.
  constants GC_DEPENDENTTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'DependentType' ##NO_TEXT.
  constants GC_DEPENDENT type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Dependent' ##NO_TEXT.
  constants GC_CURRENCY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Currency' ##NO_TEXT.
  constants GC_CURRCOUNTRY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CurrCountry' ##NO_TEXT.
  constants GC_COUNTRY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Country' ##NO_TEXT.
  constants GC_CONTACTDATA type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ContactData' ##NO_TEXT.
  constants GC_CONFIGURATION type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Configuration' ##NO_TEXT.
  constants GC_COMMLANG type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CommLang' ##NO_TEXT.
  constants GC_CITY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'City' ##NO_TEXT.
  constants GC_CHEQUEDETAILUS type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ChequeDetailUS' ##NO_TEXT.
  constants GC_CHEQUEDETAILIN type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ChequeDetailIN' ##NO_TEXT.
  constants GC_CHEQUEDETAIL type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ChequeDetail' ##NO_TEXT.
  constants GC_BANKTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BankType' ##NO_TEXT.
  constants GC_BANKNAME type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BankName' ##NO_TEXT.
  constants GC_BANKINFO type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BankInfo' ##NO_TEXT.
  constants GC_BANKCOUNTRY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BankCountry' ##NO_TEXT.
  constants GC_BANKCONTROLKEY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BankControlKey' ##NO_TEXT.
  constants GC_BANK type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Bank' ##NO_TEXT.
  constants GC_ADDRESSTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'AddressType' ##NO_TEXT.
  constants GC_ADDRESS type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Address' ##NO_TEXT.

  methods GET_EXTENDED_MODEL
  final
    exporting
      !EV_EXTENDED_SERVICE type /IWBEP/MED_GRP_TECHNICAL_NAME
      !EV_EXT_SERVICE_VERSION type /IWBEP/MED_GRP_VERSION
      !EV_EXTENDED_MODEL type /IWBEP/MED_MDL_TECHNICAL_NAME
      !EV_EXT_MODEL_VERSION type /IWBEP/MED_MDL_VERSION
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods LOAD_TEXT_ELEMENTS
  final
    returning
      value(RT_TEXT_ELEMENTS) type TT_TEXT_ELEMENTS
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .

  methods DEFINE
    redefinition .
  methods GET_LAST_MODIFIED
    redefinition .
protected section.
private section.

  methods CREATE_NEW_ARTIFACTS
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
ENDCLASS.



CLASS YCL_COV_PERS_INFO_MPC IMPLEMENTATION.


  method CREATE_NEW_ARTIFACTS.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*


DATA:
  lo_entity_type    TYPE REF TO /iwbep/if_mgw_odata_entity_typ,                      "#EC NEEDED
  lo_complex_type   TYPE REF TO /iwbep/if_mgw_odata_cmplx_type,                      "#EC NEEDED
  lo_property       TYPE REF TO /iwbep/if_mgw_odata_property,                        "#EC NEEDED
  lo_association    TYPE REF TO /iwbep/if_mgw_odata_assoc,                           "#EC NEEDED
  lo_assoc_set      TYPE REF TO /iwbep/if_mgw_odata_assoc_set,                       "#EC NEEDED
  lo_ref_constraint TYPE REF TO /iwbep/if_mgw_odata_ref_constr,                      "#EC NEEDED
  lo_nav_property   TYPE REF TO /iwbep/if_mgw_odata_nav_prop,                        "#EC NEEDED
  lo_action         TYPE REF TO /iwbep/if_mgw_odata_action,                          "#EC NEEDED
  lo_parameter      TYPE REF TO /iwbep/if_mgw_odata_property,                        "#EC NEEDED
  lo_entity_set     TYPE REF TO /iwbep/if_mgw_odata_entity_set.                      "#EC NEEDED


***********************************************************************************************************************************
*   COMPLEX TYPE - Message
***********************************************************************************************************************************
lo_complex_type = model->create_complex_type( 'Message' ). "#EC NOTEXT

***********************************************************************************************************************************
*Properties
***********************************************************************************************************************************
lo_property = lo_complex_type->create_property( iv_property_name  = 'MessageTxt' iv_abap_fieldname = 'MESSAGE' ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_creatable( abap_false ).
lo_property->set_updatable( abap_false ).
lo_property->set_sortable( abap_false ).
lo_property->set_nullable( abap_false ).
lo_property->set_filterable( abap_false ).
lo_property = lo_complex_type->create_property( iv_property_name  = 'Type' iv_abap_fieldname = 'TYPE' ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 1 ).
lo_property->set_creatable( abap_false ).
lo_property->set_updatable( abap_false ).
lo_property->set_sortable( abap_false ).
lo_property->set_nullable( abap_false ).
lo_property->set_filterable( abap_false ).

lo_complex_type->bind_structure( iv_structure_name   = 'YCOVS_MESSAGE'
                                 iv_bind_conversions = 'X' ). "#EC NOTEXT


***********************************************************************************************************************************
*   ACTION - PerformInitialValidations
***********************************************************************************************************************************

lo_action = model->create_action( 'PerformInitialValidations' ). "#EC NOTEXT
*Set return complex type
lo_action->set_return_complex_type( 'Message' ). "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( 'M' ). "#EC NOTEXT
  endmethod.


  method DEFINE.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*


data:
  lo_entity_type    type ref to /iwbep/if_mgw_odata_entity_typ, "#EC NEEDED
  lo_complex_type   type ref to /iwbep/if_mgw_odata_cmplx_type, "#EC NEEDED
  lo_property       type ref to /iwbep/if_mgw_odata_property, "#EC NEEDED
  lo_association    type ref to /iwbep/if_mgw_odata_assoc,  "#EC NEEDED
  lo_assoc_set      type ref to /iwbep/if_mgw_odata_assoc_set, "#EC NEEDED
  lo_ref_constraint type ref to /iwbep/if_mgw_odata_ref_constr, "#EC NEEDED
  lo_nav_property   type ref to /iwbep/if_mgw_odata_nav_prop, "#EC NEEDED
  lo_action         type ref to /iwbep/if_mgw_odata_action, "#EC NEEDED
  lo_parameter      type ref to /iwbep/if_mgw_odata_property, "#EC NEEDED
  lo_entity_set     type ref to /iwbep/if_mgw_odata_entity_set, "#EC NEEDED
  lo_complex_prop   type ref to /iwbep/if_mgw_odata_cmplx_prop. "#EC NEEDED

* Extend the model
model->extend_model( iv_model_name = '/CISCDFB/CONTACT_MDL' iv_model_version = '0001' ). "#EC NOTEXT

model->set_schema_namespace( '/CISCDFB/CONTACT_SRV' ).
* New artifacts have been created in the service builder after the redefinition of service
create_new_artifacts( ).
  endmethod.


  method GET_EXTENDED_MODEL.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*



ev_extended_service  = '/CISCDFB/CONTACT_SRV'.                "#EC NOTEXT
ev_ext_service_version = '0001'.               "#EC NOTEXT
ev_extended_model    = '/CISCDFB/CONTACT_MDL'.                    "#EC NOTEXT
ev_ext_model_version = '0001'.                   "#EC NOTEXT
  endmethod.


  method GET_LAST_MODIFIED.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*


  constants: lc_gen_date_time type timestamp value '20210528001403'. "#EC NOTEXT
rv_last_modified = super->get_last_modified( ).
IF rv_last_modified LT lc_gen_date_time.
  rv_last_modified = lc_gen_date_time.
ENDIF.
  endmethod.


  method LOAD_TEXT_ELEMENTS.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS          &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL   &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                    &*
*&                                                                     &*
*&---------------------------------------------------------------------*


data:
  lo_entity_type    type ref to /iwbep/if_mgw_odata_entity_typ,           "#EC NEEDED
  lo_complex_type   type ref to /iwbep/if_mgw_odata_cmplx_type,           "#EC NEEDED
  lo_property       type ref to /iwbep/if_mgw_odata_property,             "#EC NEEDED
  lo_association    type ref to /iwbep/if_mgw_odata_assoc,                "#EC NEEDED
  lo_assoc_set      type ref to /iwbep/if_mgw_odata_assoc_set,            "#EC NEEDED
  lo_ref_constraint type ref to /iwbep/if_mgw_odata_ref_constr,           "#EC NEEDED
  lo_nav_property   type ref to /iwbep/if_mgw_odata_nav_prop,             "#EC NEEDED
  lo_action         type ref to /iwbep/if_mgw_odata_action,               "#EC NEEDED
  lo_parameter      type ref to /iwbep/if_mgw_odata_property,             "#EC NEEDED
  lo_entity_set     type ref to /iwbep/if_mgw_odata_entity_set.           "#EC NEEDED


DATA:
     ls_text_element TYPE ts_text_element.                   "#EC NEEDED
clear ls_text_element.
  endmethod.
ENDCLASS.
