      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. aula-002.
       AUTHOR.RAFAEL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 IDADE        PIC 9(003) VALUE 018.
       01 DIAS-VIDA    PIC 9(006) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MULTIPLY IDADE BY 365 GIVING DIAS-VIDA
            DISPLAY "SUA IDADE EH: " IDADE " ANOS".
            DISPLAY "VOCE VIVEU " DIAS-VIDA " DIAS".
            STOP RUN.
       END PROGRAM aula-002.
