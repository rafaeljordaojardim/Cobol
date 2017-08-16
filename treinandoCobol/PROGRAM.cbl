      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCAREA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-LARGURA      PIC 9(003) VALUE ZEROS.
       01 WS-ALTURA       PIC 9(003) VALUE ZEROS.
       01 WS-AREA         PIC 9(006) VALUE ZEROS.
       01 WS-PERIMETRO    PIC 9(006) VALUE ZEROS.
       01 WS-PAUSA        PIC X(001) VALUE SPACE.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *LIMPANDO A TELA
           DISPLAY SPACES AT 0101.
      *01 LINHA 01 COLUNA
      *AT 05 LINHA 21 COLUNA
           DISPLAY "CALCULO AREA E PERIMETRO (QUAD/RET.)" AT 0521.
      *IMPRIMINDO NA TELA, EM SUAS DEVIDAS COLUNAS E LINHAS

           DISPLAY "LARGURA   :    " AT 1010.
           DISPLAY "ALTURA    :    " AT 1210.
           DISPLAY " AREA     :    " AT 1410.
           DISPLAY "PERIMETRO :    " AT 1510.
      *ACCEPT ACEITA UMA INFOMRÇÃO DO USUARIO, ENTRANDO DADOS

           ACCEPT WS-LARGURA AT 1021.
           ACCEPT WS-ALTURA  AT 1221.

           MOVE ZEROS TO WS-AREA.
           MULTIPLY WS-LARGURA BY WS-ALTURA GIVING WS-AREA

           MOVE ZEROS TO WS-PERIMETRO.
           ADD WS-LARGURA TO WS-PERIMETRO.
           ADD WS-LARGURA TO WS-PERIMETRO.
           ADD WS-ALTURA  TO WS-PERIMETRO.
           ADD WS-ALTURA  TO WS-PERIMETRO.

           DISPLAY WS-AREA AT 1421.
           DISPLAY WS-PERIMETRO AT 1521.

           DISPLAY "TECLE <enter> para sair do programa" AT 1621.
           ACCEPT WS-PAUSA AT 1701.

           STOP RUN.
