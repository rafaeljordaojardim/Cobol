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
       01  WRK-GOD.
       05  WRK-NUM PIC 9(005) VALUE ZEROS.
       05  WRK-FAT PIC 9(005) VALUE ZEROS.
       05  WRK-C PIC 9(003) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WRK-NUM.
           MOVE 1 TO WRK-FAT.
           PERFORM VARYING WRK-C FROM 1 BY 1 UNTIL WRK-C > 10
               WRK-FAT = WRK-FAT * WRK-NUM
           END-PERFORM
                DISPLAY WRK-FAT.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
