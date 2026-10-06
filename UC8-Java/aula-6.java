// Importa classes usadas para trabalhar com eventos
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

// Importa a classe Random para gerar posições aleatórias
import java.util.Random;

// Importa o Timer do Swing para controlar tempo e movimento
import javax.swing.Timer;


// Classe principal da tela do jogo
public class telaJogo extends javax.swing.JFrame {

    // Guarda a pontuação do jogador
    int pontos = 0;

    // Guarda o tempo restante do jogo
    int tempo = 30;

    // Timer responsável por movimentar o quadrado
    Timer timerMovimento;

    // Timer responsável pela contagem do tempo
    Timer timerTempo;

    // Objeto usado para gerar números aleatórios
    Random random = new Random();


    // Construtor da tela
    public telaJogo() {

        // Inicializa os componentes da tela
        initComponents();

        // Centraliza a janela na tela
        setLocationRelativeTo(null);

        // Inicia o jogo
        iniciarJogo();
    }


    // Método responsável por iniciar ou reiniciar o jogo
    void iniciarJogo() {

        // Zera a pontuação
        pontos = 0;

        // Define o tempo inicial como 30
        tempo = 30;

        // Mostra a pontuação inicial na tela
        lblPontuacao.setText("Pontos: 0");

        // Mostra o tempo inicial na tela
        lblTempo.setText("Tempo: 30");


        // =====================================================
        // TIMER DO MOVIMENTO
        // =====================================================

        // Cria um Timer que executa a cada 600 milissegundos
        // e chama o método moverQuadrado()
        timerMovimento = new Timer(600, e -> moverQuadrado());

        // Inicia o Timer de movimento
        timerMovimento.start();


        // =====================================================
        // TIMER DO TEMPO
        // =====================================================

        // Cria um Timer para controlar a contagem regressiva
        timerTempo = new Timer(800, new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {

                // Diminui 1 do tempo restante
                tempo--;

                // Atualiza o tempo mostrado na tela
                lblTempo.setText("Tempo: " + tempo);


                // Verifica se o tempo chegou a zero
                if (tempo <= 0) {

                    // Para o movimento do quadrado
                    timerMovimento.stop();

                    // Para a contagem do tempo
                    timerTempo.stop();


                    // Mostra uma janela informando que o jogo acabou
                    javax.swing.JOptionPane.showMessageDialog(
                        null,
                        "Tempo esgotado! \nPontos: " + pontos,
                        "Fim de jogo",
                        javax.swing.JOptionPane.INFORMATION_MESSAGE
                    );
                }
            }
        });

        // Inicia o cronômetro
        timerTempo.start();
    }


    // Método responsável por colocar o quadrado
    // em uma posição aleatória
    void moverQuadrado() {

        // Calcula o espaço horizontal disponível
        // descontando a largura do quadrado
        int maxX = painelJogo.getWidth()
                - btnQuadrado.getWidth();


        // Calcula o espaço vertical disponível
        // descontando a altura do quadrado
        int maxY = painelJogo.getHeight()
                - btnQuadrado.getHeight();


        // Verifica se existe espaço suficiente
        // para colocar o quadrado
        if (maxX < 0 || maxY < 0)
            return;


        // Sorteia uma posição horizontal (X)
        int x = random.nextInt(Math.max(1, maxX));


        // Sorteia uma posição vertical (Y)
        int y = random.nextInt(Math.max(1, maxY));


        // Move o botão para a posição sorteada
        btnQuadrado.setLocation(x, y);
    }


    // =====================================================
    // BOTÃO DO QUADRADO
    // =====================================================

    private void btnQuadradoActionPerformed(
        java.awt.event.ActionEvent evt) {

        // Adiciona 1 ponto quando o quadrado é clicado
        pontos++;

        // Atualiza a pontuação na tela
        lblPontuacao.setText("Pontos: " + pontos);

        // Move o quadrado para outra posição
        moverQuadrado();
    }
