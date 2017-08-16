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
       01 AREAS-DE-SALVAMENTO.
           05 AS-DATA  PIC 9(006) VALUE ZEROS.
           05 FILLER REDEFINES AS-DATA.
             10 AS-ANO PIC 9(002).
             10 AS-MES PIC 9(002).
             10 AS-DIA PIC 9(002).
       01 TABELA-MES.
           05 AS-NOM-MESES.
             10 FILLER   PIC X(009) VALUE 'JANEIRO'.
             10 FILLER   PIC X(009) VALUE 'FEVEREIRO'.
             10 FILLER   PIC X(009) VALUE ' MARCO'.
             10 FILLER   PIC X(009) VALUE 'ABRIL'.
             10 FILLER   PIC X(009) VALUE 'MAIO'.
             10 FILLER   PIC X(009) VALUE 'JUNHO'.
             10 FILLER   PIC X(009) VALUE 'JULHO'.
             10 FILLER   PIC X(009) VALUE 'AGOSTO'.
             10 FILLER   PIC X(009) VALUE 'SETEMBRO'.
             10 FILLER   PIC X(009) VALUE 'OUTUBRO'.
             10 FILLER   PIC X(009) VALUE 'NOVEMBRO'.
             10 FILLER   PIC X(009) VALUE 'DEZEMBRO'.
           05 FILLER REDEFINES AS-NOM-MESES.
               10 TB-NOM-MES   PIC X(009) OCCURS 12.

       PROCEDURE DIVISION.
           ACCEPT AS-DATA FROM DATE.
           DISPLAY TB-NOM-MES(AS-MES).
           DISPLAY AS-NOM-MESES.
       END PROGRAM YOUR-PROGRAM-NAME.
