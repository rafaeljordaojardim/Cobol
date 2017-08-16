      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-MENOR PIC 9(03).
       01 IX-CONT PIC 9(002) VALUE 1 .
       01 WRK-NUM  PIC 9(009) OCCURS 10.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM VARYING IX-CONT FROM 1 BY 1 UNTIL IX-CONT > 10
            DISPLAY 'DIGITE O ' IX-CONT ' NUMERO '
            ACCEPT WRK-NUM(IX-CONT)
               IF IX-CONT = 1
                   COMPUTE WRK-MENOR = WRK-NUM(1)
               ELSE
                   IF WRK-NUM(IX-CONT) < WRK-MENOR
                      COMPUTE WRK-MENOR = WRK-NUM(IX-CONT)
                   END-IF
               END-IF
            END-PERFORM
            DISPLAY WRK-MENOR.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
