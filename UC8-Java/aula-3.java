// Método executado quando o botão "Converter" é clicado
private void btnConverterActionPerformed(java.awt.event.ActionEvent evt) {

    // Tenta executar a conversão
    try {

        // Pega o valor digitado pelo usuário
        // trim() remove espaços extras
        // replace() permite usar vírgula ou ponto decimal
        String valorStr = txtValor.getText().trim().replace(",", ".");


        // Verifica se o campo está vazio
        if (valorStr.isEmpty()) {

            // Mostra uma mensagem pedindo o valor
            lblResultado.setText("Por favor, informe o valor em Reais.");

            // Coloca a mensagem na cor vermelha
            lblResultado.setForeground(
                new java.awt.Color(200, 0, 0)
            );

            // Para a execução
            return;
        }


        // Converte o texto digitado para um número decimal
        double valor = Double.parseDouble(valorStr);


        // Verifica se o valor é maior que zero
        if (valor <= 0) {

            // Mostra uma mensagem de erro
            lblResultado.setText(
                "Os valores têm que ser maiores que zero"
            );

            // Deixa a mensagem vermelha
            lblResultado.setForeground(
                new java.awt.Color(200, 0, 0)
            );

            return;
        }


        // =====================================================
        // CONVERSÃO DAS MOEDAS
        // =====================================================

        // Converte Reais para Dólar
        double dolar = valor / 5.60;

        // Converte Reais para Euro
        double euro = valor / 6.10;

        // Converte Reais para Peso
        double peso = valor / 0.030;

        // Converte Reais para Libra
        double libra = valor / 7.61;

        // Converte Reais para Rublo
        double rublo = valor * 30.67;


        // =====================================================
        // MOSTRA OS RESULTADOS
        // =====================================================

        // Mostra todas as conversões no JLabel
        // %.2f mostra os valores com duas casas decimais
        lblResultado.setText(
            String.format(
                "Dólar: $ %.2f | Euro: $ %.2f | Peso: $ %.2f | Libra: $ %.2f | Rublo: $ %.2f",
                dolar,
                euro,
                peso,
                libra,
                rublo
            )
        );


    // Caso o usuário digite algo que não seja um número
    } catch (NumberFormatException e) {

        // Mostra uma mensagem de erro
        lblResultado.setText(
            "Entrada inválida! Use números, Ex: 10 e 10.90"
        );

        // Deixa a mensagem vermelha
        lblResultado.setForeground(
            new java.awt.Color(200, 0, 0)
        );
    }
}


// =====================================================
// BOTÃO LIMPAR
// =====================================================

private void btnLimparActionPerformed(java.awt.event.ActionEvent evt) {

    // Limpa o campo onde o usuário digitou o valor
    txtValor.setText("");

    // Volta o resultado para o valor inicial
    lblResultado.setText("-");

    // Volta a cor do resultado para preto
    lblResultado.setForeground(
        new java.awt.Color(0, 0, 0)
    );

    // Coloca o cursor novamente no campo de valor
    txtValor.requestFocus();
}
