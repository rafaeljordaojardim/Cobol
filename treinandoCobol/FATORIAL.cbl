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
       01  AREA-SALVAMENTO.
           05 WRK-NUM PIC 9(009) VALUE ZEROS.
           05 IX-FAT  PIC 9(009) VALUE 1.
           05 WRK-RES PIC 9(009) VALUE ZEROS.
       PROCEDURE DIVISION.
            ACCEPT WRK-NUM.
            PERFORM VARYING IX-FAT FROM 1 BY 1 UNTIL IX-FAT > WRK-NUM
               WRK-RES = IX-FAT * WRK-NUM
            END-PERFORM

            DISPLAY WRK-RES.
            STOP RUN.
       END PROGRAM FATORIAL.
