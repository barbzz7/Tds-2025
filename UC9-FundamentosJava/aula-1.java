public class AcademioHeroi {

    public static void main(String[] args) {

        // Cria o Scanner para receber informações digitadas pelo usuário
        Scanner entrada = new Scanner(System.in);


        // Pede a idade do usuário
        System.out.println("Digite sua idade: ");

        // Guarda a idade digitada na variável idade
        int idade = entrada.nextInt();


        // Pede o nível de poder
        System.out.println("Qual seu nivel de poder? ");

        // Guarda o poder digitado
        int poder = entrada.nextInt();


        // Pede o nível de controle emocional
        System.out.println("Nivel de controle emocional?");

        // Guarda o controle emocional digitado
        int controle = entrada.nextInt();


        // Verifica se a idade é maior ou igual a 15
        boolean Nidade = idade >= 15;

        // Verifica se o poder é maior ou igual a 50
        boolean Npoder = poder >= 50;


        // Verifica as condições para aprovação
        // Poder menor que 80
        // Controle emocional maior ou igual a 60
        // Idade maior ou igual a 15
        if (poder < 80 && controle >= 60 && idade >= 15) {

            // Se todas as condições forem verdadeiras
            System.out.println("Parabens você foi aprovado ");

        } else {

            // Se alguma das condições não for atendida
            System.out.println("Reprovado");
        }


        // Verifica outra possibilidade de aprovação
        // Poder maior ou igual a 80
        // Idade maior ou igual a 15
        if (poder >= 80 && idade >= 15) {

            // Se as duas condições forem verdadeiras
            System.out.println("Parabens voce foi aprovado ");

        } else {

            // Caso contrário
            System.out.println("voce nao serve pra ser heroi");
        }


        // Fecha o Scanner
        entrada.close();
    }
}
