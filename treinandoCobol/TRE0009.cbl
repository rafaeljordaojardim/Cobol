      ******************************************************************
      * Author:RAFAEL JORDÃO JARDIM.
      * Date:31/07/2017
      * Purpose:LEARN.
      * Tectonics: cobc.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WRK-GOD.
       05  WRK-QUADRADO PIC 9(007) VALUES ZEROS.
       05  WRK-CUBO     PIC 9(007) VALUES ZEROS.
       05  WRK-NUM      PIC 9(003) VALUES ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM VARYING WRK-CON FROM 1 BY 1 UNTIL WRK-CON > WRK-NUM
            PERFORM VARYING WRK-NUM FROM 1 BY 1 UNTIL WRK-NUM > 100
               COMPUTE WRK-QUADRADO = WRK-NUM * WRK-NUM
               COMPUTE WRK-CUBO = WRK-QUADRADO * WRK-NUM
               DISPLAY 'NUM ' WRK-NUM ' QUADRADO ' WRK-QUADRADO ' CUBO '
               WRK-CUBO
            END-PERFORM
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
