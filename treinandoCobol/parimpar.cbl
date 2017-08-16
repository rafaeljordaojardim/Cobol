      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. parimpar.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 AREA-SALVAMENTO.
           05 WRK-NUM PIC 9(09) OCCURS 5.
           05 IX-CONT PIC 9(03) VALUE 1.
           05 WRK-RESTO PIC 9(09) VALUE ZEROS.
           05 WRK-LIXO  PIC 9(09) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM VARYING IX-CONT FROM 1 BY 1 UNTIL IX-CONT > 5
               ACCEPT WRK-NUM(IX-CONT)
               DIVIDE WRK-NUM(IX-CONT) BY 2 GIVING WRK-LIXO
               REMAINDER WRK-RESTO
               IF WRK-RESTO = 0
                   DISPLAY 'NUMERO PAR'
               ELSE
                   DISPLAY 'IMPAR'
               END-IF
            END-PERFORM


            STOP RUN.
       END PROGRAM parimpar.
