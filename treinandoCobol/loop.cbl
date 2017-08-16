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
       01 i      pic 9(02).
       01 WRK-AC PIC 9(8).
       01 WRK-N PIC 9(8).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM varying i from 1 by 1 until  i>10
              DISPLAY "NUMERO " i
              ACCEPT WRK-N
              COMPUTE WRK-AC = WRK-AC + WRK-N
            END-PERFORM
            DISPLAY WRK-AC.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
