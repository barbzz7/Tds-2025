// Classe principal da tela da calculadora
public class TelaCalculadora extends javax.swing.JFrame {

    // Guarda o primeiro número digitado
    double num1;

    // Guarda o segundo número digitado
    double num2;

    // Guarda o resultado da operação
    double resultado;

    // Guarda qual operação foi escolhida
    // Pode ser: +, -, * ou /
    String operador;


    // Construtor da tela
    public TelaCalculadora() {

        // Inicializa todos os componentes da tela
        initComponents();
    }


    // =====================================================
    // BOTÕES DOS NÚMEROS
    // =====================================================

    // Botão 0
    private void btn0ActionPerformed(java.awt.event.ActionEvent evt) {

        // Pega o que já está no visor e adiciona o número 0
        txtVisor.setText(txtVisor.getText() + "0");
    }


    // Botão 1
    private void btn1ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 1 ao visor
        txtVisor.setText(txtVisor.getText() + "1");
    }


    // Botão 2
    private void btn2ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 2 ao visor
        txtVisor.setText(txtVisor.getText() + "2");
    }


    // Botão 3
    private void btn3ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 3 ao visor
        txtVisor.setText(txtVisor.getText() + "3");
    }


    // Botão 4
    private void btn4ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 4 ao visor
        txtVisor.setText(txtVisor.getText() + "4");
    }


    // Botão 5
    private void btn5ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 5 ao visor
        txtVisor.setText(txtVisor.getText() + "5");
    }


    // Botão 6
    private void btn6ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 6 ao visor
        txtVisor.setText(txtVisor.getText() + "6");
    }


    // Botão 7
    private void btn7ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 7 ao visor
        txtVisor.setText(txtVisor.getText() + "7");
    }


    // Botão 8
    private void btn8ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 8 ao visor
        txtVisor.setText(txtVisor.getText() + "8");
    }


    // Botão 9
    private void btn9ActionPerformed(java.awt.event.ActionEvent evt) {

        // Adiciona o número 9 ao visor
        txtVisor.setText(txtVisor.getText() + "9");
    }


    // =====================================================
    // BOTÕES DAS OPERAÇÕES
    // =====================================================

    // Botão de SOMA
    private void btnSomarActionPerformed(java.awt.event.ActionEvent evt) {

        // Pega o número que está no visor
        // e transforma o texto em número decimal
        num1 = Double.parseDouble(txtVisor.getText());

        // Guarda a operação escolhida
        operador = "+";

        // Limpa o visor para o usuário digitar o segundo número
        txtVisor.setText("");
    }


    // Botão de SUBTRAÇÃO
    private void btnSubActionPerformed(java.awt.event.ActionEvent evt) {

        // Guarda o primeiro número
        num1 = Double.parseDouble(txtVisor.getText());

        // Guarda a operação escolhida
        operador = "-";

        // Limpa o visor
        txtVisor.setText("");
    }


    // Botão de MULTIPLICAÇÃO
    private void btnMulActionPerformed(java.awt.event.ActionEvent evt) {

        // Guarda o primeiro número
        num1 = Double.parseDouble(txtVisor.getText());

        // Guarda a operação escolhida
        operador = "*";

        // Limpa o visor
        txtVisor.setText("");
    }


    // Botão de DIVISÃO
    private void btnDivActionPerformed(java.awt.event.ActionEvent evt) {

        // Guarda o primeiro número
        num1 = Double.parseDouble(txtVisor.getText());

        // Guarda a operação escolhida
        operador = "/";

        // Limpa o visor
        txtVisor.setText("");
    }


    // =====================================================
    // BOTÃO IGUAL
    // =====================================================

    private void btnIgualActionPerformed(java.awt.event.ActionEvent evt) {

        // Pega o segundo número que está no visor
        num2 = Double.parseDouble(txtVisor.getText());


        // Verifica qual operação foi escolhida
        switch (operador) {

            // Se o operador for +
            case "+":
                resultado = num1 + num2;
                break;


            // Se o operador for -
            case "-":
                resultado = num1 - num2;
                break;


            // Se o operador for *
            case "*":
                resultado = num1 * num2;
                break;


            // Se o operador for /
            case "/":

                // Verifica se o segundo número é zero
                if (num2 == 0) {

                    // Mostra uma mensagem de erro no visor
                    txtVisor.setText("Erro");

                    // Para a execução do método
                    return;

                } else {

                    // Faz a divisão normalmente
                    resultado = num1 / num2;
                }

                break;
        }


        // Mostra o resultado no visor
        // String.valueOf transforma o número em texto
        txtVisor.setText(String.valueOf(resultado));
    }


    // =====================================================
    // BOTÃO LIMPAR
    // =====================================================

    private void btnLimparActionPerformed(java.awt.event.ActionEvent evt) {

        // Limpa o conteúdo do visor
        txtVisor.setText("");
    }


    // =====================================================
    // MÉTODO PRINCIPAL
    // =====================================================

    public static void main(String args[]) {

        // Abre a tela da calculadora
        // usando a fila de eventos do Java Swing
        java.awt.EventQueue.invokeLater(new Runnable() {

            @Override
            public void run() {

                // Cria uma nova calculadora
                // e deixa ela visível
                new TelaCalculadora().setVisible(true);
            }
        });
    }
}
