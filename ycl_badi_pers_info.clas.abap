CLASS ycl_badi_pers_info DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES /ciscdfb/if_badi_cont_det_rt .
    INTERFACES if_badi_interface .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS YCL_BADI_PERS_INFO IMPLEMENTATION.


  method /CISCDFB/IF_BADI_CONT_DET_RT~CONVERT_COMM_VALUE_INPUT.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~CONVERT_COMM_VALUE_OUTPUT.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~CONVERT_PHONE_INPUT.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~CONVERT_PHONE_OUTPUT.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_BANK_CONTROL_KEY.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_CHEQUE_DETAILS.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_COMMUNICATION_METHOD.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_COMMUNICATION_TYPE.
  endmethod.


  METHOD /ciscdfb/if_badi_cont_det_rt~get_config_parameters.

    "Test BADI - if changed today, disable
    IF sy-datum EQ '20210521' AND ( sy-uname = 'ANANDEPU' OR sy-uname = 'CCHEN').
      READ TABLE ct_config ASSIGNING FIELD-SYMBOL(<ls_config>)
       WITH KEY name = 'Bank' parent = ''.
      IF sy-subrc EQ 0.
        <ls_config>-is_readonly = abap_true.
      ELSE.
        "For customer, if entry is missing insert it
      ENDIF.
    ENDIF.


  ENDMETHOD.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_DEPENDENT_TYPE_CONFIG.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_EMPLOYEE_DETAILS.
  endmethod.


  method /CISCDFB/IF_BADI_CONT_DET_RT~GET_PROFILE_PIC_URL.
    "Sample URL
  endmethod.


  METHOD /ciscdfb/if_badi_cont_det_rt~validate_bank.

    DATA ls_return TYPE bapiret2.
    "Validate if bank account # starts with ABC, then error
    IF is_new_bank-bankn IS NOT INITIAL.
      FIND REGEX '^ABC+' IN is_new_bank-bankn.
      IF sy-subrc EQ 0.
        ls_return-type = 'E'.
        ls_return-id = 'YTEST'.
        ls_return-message = 'Test - Account number cannot start with ABC'.
        ls_return-number = 121.
        APPEND ls_return TO ct_return.
        CLEAR ls_return.
      ENDIF.
    ENDIF.


write 'test'.
"This is by DEV2
clear ls_return.
" updated - AN


  ENDMETHOD.
ENDCLASS.
