// Método executado quando o botão "Calcular" é clicado
private void btnCalcularActionPerformed(java.awt.event.ActionEvent evt) {

    try {

        // 1. Pega o que o usuário digitou nos campos de texto
        // trim() remove espaços no começo e no final
        // replace() permite usar vírgula ou ponto como separador decimal
        String pesoStr = txtPeso.getText().trim().replace(",", ".");
        String alturaStr = txtAltura.getText().trim().replace(",", ".");


        // 2. Verifica se algum dos campos está vazio
        if (pesoStr.isEmpty() || alturaStr.isEmpty()) {

            lblResultado.setText("Por favor, preencha peso e altura.");

            // Define a cor da mensagem como vermelha
            lblResultado.setForeground(
                new java.awt.Color(200, 0, 0)
            );

            // Para a execução do código
            return;
        }


        // 3. Converte os textos para números do tipo double
        double peso = Double.parseDouble(pesoStr);
        double altura = Double.parseDouble(alturaStr);


        // 4. Verifica se os valores são maiores que zero
        if (peso <= 0 || altura <= 0) {

            lblResultado.setText("Valores devem ser maiores que zero.");

            lblResultado.setForeground(
                new java.awt.Color(200, 0, 0)
            );

            return;
        }


        // 5. Calcula o IMC
        // Fórmula: peso dividido pela altura ao quadrado
        double imc = peso / (altura * altura);


        // 6. Define a classificação de acordo com o resultado do IMC
        String classificacao;
        java.awt.Color cor;


        // Abaixo do peso
        if (imc < 18.5) {

            classificacao = "Abaixo do peso";
            cor = new java.awt.Color(0, 102, 204);


        // Peso normal
        } else if (imc < 25) {

            classificacao = "Peso normal";
            cor = new java.awt.Color(0, 128, 0);


        // Sobrepeso
        } else if (imc < 30) {

            classificacao = "Sobrepeso";
            cor = new java.awt.Color(255, 140, 0);


        // Obesidade grau I
        } else if (imc < 35) {

            classificacao = "Obesidade I";
            cor = new java.awt.Color(220, 20, 60);


        // Obesidade grau II
        } else if (imc < 40) {

            classificacao = "Obesidade II";
            cor = new java.awt.Color(178, 34, 34);


        // Obesidade grau III
        } else {

            classificacao = "Obesidade III";
            cor = new java.awt.Color(139, 0, 0);
        }


        // 7. Mostra o resultado na tela
        // %.2f deixa o IMC com apenas 2 casas decimais
        lblResultado.setText(
            String.format("IMC: %.2f - %s", imc, classificacao)
        );

        // Coloca a cor correspondente à classificação
        lblResultado.setForeground(cor);


    // Caso o usuário digite algo que não seja um número
    } catch (NumberFormatException e) {

        lblResultado.setText(
            "Entrada invalida! Use números, ex.: 70 e 1.70"
        );

        lblResultado.setForeground(
            new java.awt.Color(200, 0, 0)
        );
    }
}


// =====================================================
// BOTÃO LIMPAR
// =====================================================

private void btnLimparActionPerformed(java.awt.event.ActionEvent evt) {

    // Limpa o campo do peso
    txtPeso.setText("");

    // Limpa o campo da altura
    txtAltura.setText("");

    // Volta o resultado para o valor inicial
    lblResultado.setText("-");

    // Volta a cor do resultado para preto
    lblResultado.setForeground(
        new java.awt.Color(0, 0, 0)
    );

    // Coloca o cursor novamente no campo de peso
    txtPeso.requestFocus();
}
