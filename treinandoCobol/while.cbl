      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  WRK-SOMA    PiC 9(10).
       01  WRK-N       PIC 9(10) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM UNTIL WRK-N EQUAL 0
               DISPLAY "DIGITE UM NUMERO"
               ACCEPT WRK-N
               COMPUTE WRK-SOMA = WRK-SOMA + WRK-N
           END-PERFORM.
            DISPLAY WRK-SOMA
            STOP RUN.
       END PROGRAM kkk.
