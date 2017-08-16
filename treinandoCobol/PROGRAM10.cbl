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
       01  WRK-GOD.
       05  WRK-NUM PIC 9(005) VALUES ZEROS.
       05  WRK-FAT PIC 9(005) VALUE ZEROS.
       05  WRK-CON PIC 9(005) VALUES ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WRK-NUM.
           PERFORM VARYING WRK-CON FROM 1 BY 1 UNTIL WRK-CON > WRK-NUM
               WRK-FAT = WRK-FAT * WRK-NUM
           END-PERFORM
                DISPLAY WRK-FAT
       END PROGRAM YOUR-PROGRAM-NAME.
