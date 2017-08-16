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
           05 WRK-OP PIC 9(002) VALUE ZEROS.
           05 WRK-RES PIC S9(009)V9(002) VALUE ZEROS.
           05 WRK-NUM PIC S9(009)V9(002) VALUE ZEROS.
           05 WRK-NUM2 PIC S9(009)V9(002) VALUE ZEROS.
       PROCEDURE DIVISION.

           PERFORM UNTIL WRK-OP = 5

           PERFORM 1000-INICIALIZA

           PERFORM 2000-PROCESSO

           PERFORM 3000-SAIDA

           END-PERFORM
           GOBACK.

       1000-INICIALIZA SECTION.
           DISPLAY 'CALCULADORA SIMPLES'.
           DISPLAY '1 - SOMAR'.
           DISPLAY '2 - SUBTRAIR'.
           DISPLAY '3 - MULTIPLICAR'.
           DISPLAY '4 - DIVIDIR'.
           DISPLAY '5 - SAIR'.
           ACCEPT WRK-OP.

           PERFORM UNTIL WRK-OP > 0 AND WRK-OP < 6
               IF WRK-OP equal 5
                   DISPLAY 'SAINDO..'
                   EXIT PROGRAM
               ELSE
                   IF WRK-OP < 1 OR WRK-OP > 5
                       DISPLAY 'DIGITE UM NUMERO VALIDO'
                       ACCEPT WRK-OP
                   END-IF
                       DISPLAY 'DIGITE O PRIMEIRO NUMERO'
                       ACCEPT WRK-NUM
                       DISPLAY 'DIGITE O SEGUNDO NUMERO'
                       ACCEPT WRK-NUM2
              END-IF
           END-PERFORM.
       1000-INICIALIZA-EXIT.
           EXIT.

       2000-PROCESSO SECTION.
           EVALUATE TRUE
               WHEN WRK-OP = 1
                   COMPUTE WRK-RES = WRK-NUM + WRK-NUM2
               WHEN WRK-OP = 2
                   COMPUTE WRK-RES = WRK-NUM - WRK-NUM2
               WHEN WRK-OP = 3
                   COMPUTE WRK-RES = WRK-NUM * WRK-NUM2
               WHEN WRK-OP = 4
                   COMPUTE WRK-RES = WRK-NUM / WRK-NUM2
               WHEN OTHER
                   DISPLAY 'TCHAU'
           END-EVALUATE.

           2000-PROCESSO-EXIT.
           EXIT.

       3000-SAIDA SECTION.
           DISPLAY WRK-RES.
           COMPUTE WRK-OP = 0.
       3000-SAIDA-EXIT.
           EXIT.

       END PROGRAM YOUR-PROGRAM-NAME.
