private void btnEnviarActionPerformed(java.awt.event.ActionEvent evt) {

    // Pega o texto que o usuário digitou no campo de mensagem
    String mensagem = txtMensagem.getText();

    // Mostra a mensagem do usuário na área de conversa
    txtConversa.append("Você: " + mensagem + "\n");

    // Cria uma variável para guardar a resposta do robô
    String resposta = "";

    // Converte a mensagem para letras minúsculas
    // e verifica se contém "oi" ou "olá"
    if (mensagem.toLowerCase().contains("oi") ||
        mensagem.toLowerCase().contains("Olá")) {

        // Resposta para uma saudação
        resposta = "RoboKleitin: Fala tu ";

    // Verifica se o usuário perguntou "tudo bem?"
    } else if (mensagem.toLowerCase().contains("tudo bem?")) {

        // Resposta do robô
        resposta = "RoboKleitin: suave, solta a voz ai do que ce precisa";

    // Verifica se o usuário perguntou o nome do robô
    } else if (mensagem.toLowerCase().contains("qual o seu nome")) {

        // Resposta informando o nome do robô
        resposta = "RoboKleitin: Eu sou o RoboKleitin do rasta vulgo kleitin,"
                + " fui criado pra te passar a visão ";

    // Verifica se o usuário escreveu "tchau"
    } else if (mensagem.toLowerCase().contains("tchau")) {

        // Resposta de despedida
        resposta = "RoboKleitin: até logo! Não se esqueça faltam 3 dias Pro ENEM!";

    // Caso nenhuma das palavras anteriores seja encontrada
    } else {

        // Resposta padrão do robô
        resposta = "RoboKleitin: hmm... ainda estou aprendendo isso!";
    }

    // Adiciona a resposta do robô na área de conversa
    txtConversa.append(resposta + "\n\n");
}
