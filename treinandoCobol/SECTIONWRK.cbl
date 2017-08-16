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
       01 AREA-SALVAMENTO.
           05 AS-DATA PIC 9(006) VALUE ZEROS.
           05 FILLER REDEFINES AS-DATA.
               10 AS-ANO PIC 9(002).
               10 AS-MES PIC 9(002).
               10 AS-DIA PIC 9(002).
       PROCEDURE DIVISION.

           PERFORM 1000-INICIALIZA

           PERFORM 2000-PROCESSA

           PERFORM 3000-FINALIZA

           GOBACK.
      *INICIALIZANDO
       1000-INICIALIZA     SECTION.
           ACCEPT AS-DATA FROM DATE.
       1000-INICIALIZA-EXIT.
           EXIT.
      *PROCESSA
       2000-PROCESSA SECTION.
           DISPLAY AS-DIA '/' AS-MES '/' AS-ANO
            PERFORM 2100-BUSCA-DADOS.
            PERFORM 2200-IMPRIME-DADOS.
       2000-PROCESSA-EXIT.
           EXIT.
      *LE DADOS DO BD
       2100-BUSCA-DADOS SECTION.

       2100-BUSCA-DADOS-EXIT.
           EXIT.
      *IMPRIME DADOS
       2200-IMPRIME-DADOS SECTION.

       2200-IMPRIME-DADOS-EXIT.
           EXIT.
      * FINALIZANDO
       3000-FINALIZA     SECTION.
           DISPLAY 'TERMINO NORMAL'.
       3000-FINALIZA-EXIT.
           EXIT.
      *CANCELA
       9000-CANCELA SECTION.
           DISPLAY 'TERMINO ANORMAL'.
       9000-CANCELA-EXIT.
           EXIT.
       END PROGRAM YOUR-PROGRAM-NAME.
