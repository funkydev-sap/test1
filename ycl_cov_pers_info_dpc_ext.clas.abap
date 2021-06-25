CLASS ycl_cov_pers_info_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM ycl_cov_pers_info_dpc
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /iwbep/if_mgw_appl_srv_runtime~execute_action
         REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS YCL_COV_PERS_INFO_DPC_EXT IMPLEMENTATION.


  METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.

    DATA ls_return TYPE bapiret2.

    CALL FUNCTION 'BALW_BAPIRETURN_GET2'
      EXPORTING
        type   = 'W'
        cl     = '/CISCDFB/MSG'
        number = '006'
      IMPORTING
        return = ls_return.


    DATA lt_return TYPE bapiret2_t.
    APPEND ls_return TO lt_return.
    CLEAR ls_return.

    DATA ls_message TYPE ycovs_message.
    data lt_message type table of ycovs_message.

    ls_message-message = 'Test message error'.
    ls_message-type = 'E'.
    append ls_message to lt_message.

    copy_data_to_ref( EXPORTING is_data = lt_message
        CHANGING cr_data = er_data ).


  ENDMETHOD.
ENDCLASS.
