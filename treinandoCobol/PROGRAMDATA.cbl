      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATAA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  AREA-SALVAMENTO.
           05 DATTA-FODA .
               10 FILLER   PIC X(02).
               10 FILLER   PIC X(01) VALUE '/'.
               10 FILLER   PIC X(02).
               10 FILLER   PIC X(01) VALUE '/'.
               10 FILLER   PIC X(02).
           05 FILLER REDEFINES DATTA-FODA.
               10 datta-aa pic x(08).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            ACCEPT datta-aa FROM DATE
            DISPLAY datta-aa
            STOP RUN.
       END PROGRAM DATAA.
