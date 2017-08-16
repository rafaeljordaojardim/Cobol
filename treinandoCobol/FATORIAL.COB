      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FATORIAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-NUM PIC 9(009) VALUE ZEROS.
       01 i  PIC 9(009) VALUE 1.
       01 WRK-RES PIC 9(009) VALUE 1.
       PROCEDURE DIVISION.
            ACCEPT WRK-NUM.
            PERFORM varying i from 1 by 1 until  i > WRK-NUM
               COMPUTE WRK-RES = WRK-RES * i
            END-PERFORM

            DISPLAY WRK-RES.
            STOP RUN.
       END PROGRAM FATORIAL.
