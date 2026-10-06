// Método executado quando o botão "Calcular" é clicado
private void btnCalcularActionPerformed(java.awt.event.ActionEvent evt) {

    // Começa o total do pedido com 0
    double total = 0;


    // =====================================================
    // VERIFICA OS ITENS SELECIONADOS
    // =====================================================

    // Verifica se o X-Monstro foi selecionado
    if (chkMontro.isSelected())
        total += 31;

    // Se estiver selecionado, adiciona R$ 31 ao total


    // Verifica se o Bagual foi selecionado
    if (chkBagual.isSelected())
        total += 43;


    // Verifica se a batata grande foi selecionada
    if (chkBatataG.isSelected())
        total += 50;


    // Verifica se a batata média foi selecionada
    if (chkBatataM.isSelected())
        total += 25;


    // Verifica se o pastel foi selecionado
    if (chkPastel.isSelected())
        total += 15;


    // Verifica se o café foi selecionado
    if (chkCafe.isSelected())
        total += 8;


    // Verifica se a Coca-Cola foi selecionada
    if (chkCocacola.isSelected())
        total += 5;


    // Verifica se o sagu foi selecionado
    if (chkSagu.isSelected())
        total += 12;


    // Verifica se a torta foi selecionada
    if (chkTorta.isSelected())
        total += 15;


    // =====================================================
    // MOSTRA O TOTAL
    // =====================================================

    // Mostra o valor total do pedido
    // %.2f deixa o valor com duas casas decimais
    lblResultado.setText(
        String.format("Total: R$ %.2f", total)
    );


    // =====================================================
    // MUDA A MENSAGEM E A COR
    // DE ACORDO COM O VALOR DO PEDIDO
    // =====================================================

    // Se nenhum item foi selecionado
    if (total == 0) {

        // Coloca a mensagem em vermelho
        lblResultado.setForeground(
            new java.awt.Color(200, 0, 0)
        );

        // Mostra uma mensagem informando que nenhum item foi escolhido
        lblResultado.setText("Nenhum item selecionado!");
    }


    // Se o total for menor que 10
    else if (total < 10) {

        // Coloca o resultado em verde
        lblResultado.setForeground(
            new java.awt.Color(0, 100, 0)
        );
    }


    // Se o total estiver entre 10 e 25
    else if (total <= 25) {

        // Coloca o resultado em azul
        lblResultado.setForeground(
            new java.awt.Color(0, 128, 255)
        );
    }


    // Se o total for maior que 25
    else {

        // Coloca o resultado em laranja
        lblResultado.setForeground(
            new java.awt.Color(255, 128, 9)
        );

        // Mostra uma mensagem informando que o pedido está completo
        lblResultado.setText(
            String.format(
                "Pedido completo! Total: R$ %.2f",
                total
            )
        );
    }
}


// =====================================================
// BOTÃO LIMPAR
// =====================================================

private void btnLimparActionPerformed(java.awt.event.ActionEvent evt) {

    // Desmarca o X-Monstro
    chkMontro.setSelected(false);

    // Desmarca o Bagual
    chkBagual.setSelected(false);

    // Desmarca a batata grande
    chkBatataG.setSelected(false);

    // Desmarca a batata média
    chkBatataM.setSelected(false);

    // Desmarca o café
    chkCafe.setSelected(false);

    // Desmarca a Coca-Cola
    chkCocacola.setSelected(false);

    // Desmarca o pastel
    chkPastel.setSelected(false);

    // Desmarca o sagu
    chkSagu.setSelected(false);

    // Desmarca a torta
    chkTorta.setSelected(false);


    // Volta o texto do resultado para o valor inicial
    lblResultado.setText("Total: R$ 0,00");

    // Volta a cor do resultado para preto
    lblResultado.setForeground(
        new java.awt.Color(0, 0, 0)
    );
}


// =====================================================
// MÉTODO PRINCIPAL
// =====================================================

public static void main(String args[]) {

    // Tenta configurar o visual Nimbus do Java Swing
    try {

        // Procura os estilos disponíveis no sistema
        for (
            javax.swing.UIManager.LookAndFeelInfo info
            : javax.swing.UIManager.getInstalledLookAndFeels()
        ) {

            // Verifica se o estilo encontrado é o Nimbus
            if ("Nimbus".equals(info.getName())) {

                // Define o Nimbus como aparência da aplicação
                javax.swing.UIManager.setLookAndFeel(
                    info.getClassName()
                );

                // Para a procura depois de encontrar o Nimbus
                break;
            }
        }


    // Trata possíveis erros relacionados ao visual
    } catch (ClassNotFoundException ex) {

        java.util.logging.Logger
            .getLogger(Lanchonete.class.getName())
            .log(
                java.util.logging.Level.SEVERE,
                null,
                ex
            );

    } catch (InstantiationException ex) {

        java.util.logging.Logger
            .getLogger(Lanchonete.class.getName())
            .log(
                java.util.logging.Level.SEVERE,
                null,
                ex
            );

    } catch (IllegalAccessException ex) {

        java.util.logging.Logger
            .getLogger(Lanchonete.class.getName())
            .log(
                java.util.logging.Level.SEVERE,
                null,
                ex
            );

    } catch (javax.swing.UnsupportedLookAndFeelException ex) {

        java.util.logging.Logger
            .getLogger(Lanchonete.class.getName())
            .log(
                java.util.logging.Level.SEVERE,
                null,
                ex
            );
    }


    // Cria e mostra a tela da lanchonete
    java.awt.EventQueue.invokeLater(new Runnable() {

        @Override
        public void run() {

            // Cria um objeto da classe Lanchonete
            // e deixa a janela visível
            new Lanchonete().setVisible(true);
        }
    });
}
