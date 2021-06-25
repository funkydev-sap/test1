class YCL_PERS_INFO_2_UTIL definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR .
protected section.
private section.
ENDCLASS.



CLASS YCL_PERS_INFO_2_UTIL IMPLEMENTATION.


  method CONSTRUCTOR.

    DATA(lr_pers_info) = new /CISCDFB/CL_CON_DET_RUN_TIME( ).

  endmethod.
ENDCLASS.
