
      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGNOME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-NOME        PIC A(20) VALUE SPACES.
       01 WRK-ALTURA      PIC 9(01)V99 VALUE ZEROS.
       01 WRK-PESO        PIC 9(03) VALUE ZEROS.
       01 WRK-RES         PIC 9(02)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIGITE SEU NOME"
            ACCEPT WRK-NOME.
            DISPLAY "DIGITE SUA ALTURA"
            ACCEPT WRK-ALTURA.
            DISPLAY "DIGITE SEU PESO"
            ACCEPT WRK-PESO.

            MULTIPLY WRK-ALTURA BY WRK-ALTURA GIVING WRK-RES.
            DIVIDE WRK-PESO BY WRK-RES GIVING WRK-RES.

            DISPLAY "SEU IMC: " WRK-RES.
            DISPLAY WRK-NOME.
             IF WRK-RES > 25
               DISPLAY "ACIMA DO PESO"
             ELSE
                DISPLAY "PESO NORMAL"
            END-IF

            STOP RUN.
       END PROGRAM PROGNOME.
