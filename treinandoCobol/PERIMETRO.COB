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
       01 WS-LARGURA      PIC 9(003) VALUE ZEROS.
       01 WS-ALTURA       PIC 9(003) VALUE ZEROS.
       01 WS-AREA         PIC 9(006) VALUE ZEROS.
       01 WS-PERIMETRO    PIC 9(006) VALUE ZEROS.
       01 WS-PAUSA        PIC X(001) VALUE SPACE.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY SPACES AT 0101.
           DISPLAY "CALCULO AREA E PERIMETRO (QUAD/RET.)" AT 0521.
       END PROGRAM YOUR-PROGRAM-NAME.
