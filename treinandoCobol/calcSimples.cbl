      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCSIMP.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SALVAMENTO.
           05 WRK-OP   PIC 9(01) VALUE ZEROS.
           05 WRK-RESP PIC S9(09)V9(02) VALUE ZEROS.
           05 WRK-NUM  PIC S9(09)V9(02) VALUE ZEROS.
           05 WRK-NUM2  PIC S9(09)V9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM UNTIL WRK-OP = 5
                   DISPLAY '1 - SOMAR'
                   DISPLAY '2 - SUBTRAIR'
                   DISPLAY '3 - MULTIPLICAR'
                   DISPLAY '4 - DIVIDIR'
                   DISPLAY '5 - SAIR'
               PERFORM UNTIL WRK-OP > 0 AND WRK-OP < 6
                    ACCEPT WRK-OP
                       IF WRK-OP < 1 OR WRK-OP > 5
                           DISPLAY 'DIGITE UMA OPCAO VALIDA'
                       END-IF
               END-PERFORM
               IF WRK-OP EQUAL 5
                   DISPLAY 'SAINDO...'
                   EXIT PERFORM
               ELSE
               DISPLAY 'DIGITE O PRIMEIRO NUMERO'
               ACCEPT WRK-NUM
               DISPLAY 'DIGITE O SEGUNDO NUMERO'
               ACCEPT WRK-NUM2
               EVALUATE TRUE
              WHEN WRK-OP = 1
                   COMPUTE WRK-RESP = WRK-NUM + WRK-NUM2
                   DISPLAY 'A SOMA DOS DOIS NUMEROS E ' WRK-RESP

              WHEN WRK-OP = 2
                   COMPUTE WRK-RESP = WRK-NUM - WRK-NUM2
                   DISPLAY 'A SUBTRACAO DOS DOIS NUMEROS E ' WRK-RESP
              WHEN WRK-OP = 3
                   COMPUTE WRK-RESP = WRK-NUM * WRK-NUM2
                   DISPLAY 'A MULTIPLICACAO DOS DOIS NUMEROS E '
                   WRK-RESP
              WHEN WRK-OP = 4
                   COMPUTE WRK-RESP = WRK-NUM / WRK-NUM2
                   DISPLAY 'A DIVISAO DOS DOIS NUMEROS E '
                   WRK-RESP
              WHEN WRK-OP = 5
                   DISPLAY 'ATE MAIS'
              WHEN OTHER
                   DISPLAY 'OPCAO INVALIDA'
              END-EVALUATE
              COMPUTE WRK-OP = 0
              END-IF
            END-PERFORM
            STOP RUN.
       END PROGRAM CALCSIMP.
