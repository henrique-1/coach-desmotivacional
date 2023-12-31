import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _frases = [
    "Tudo pode dar errado se você tentar. Mas se não fizer nada, tudo ficará igual.",
    "A mãe da frustração é você acreditar que pode realizar seus sonhos sem ser herdeiro.",
    "O meu trabalho dos sonhos seria ganhar para dormir. Enquanto não chego lá, me frustro com todos os outros trabalhos.",
    "O seu problema é estar cansado e continuar dormindo tarde sem vontade de mudar isso.",
    "Aquilo que te desafia, te tira a paciência com a vida.",
    "Abandone antes de tentar e evite maiores frustrações.",
    "Sonhar e se frustrar porque alguém realizou seus sonhos mais rápido que você.",
    "Não tem como subir a ladeira que se transformou a vida com as suas pernas fracas.",
    "Pode ser que seu propósito na vida seja nunca vencer, apenas viver de tentativa.",
    "O importante é acreditar na derrota e talvez se surpreender com a vitória.",
    "Os que não param de lutar estão sempre em busca da sua próxima derrota.",
    "As piores coisas da sua vida podem acontecer se você decidir sair de onde está.",
    "A esperança já te fez fazer coisas doidas e que você se arrependeu. Então, não tenha esperança em nada.",
    "O desespero é o que move as pessoas, não a esperança.",
    "Você não é especial e os outros também não são. Somos todos pessoas normais em busca do fracasso.",
    "O empate é o melhor resultado porque ninguém sai perdendo.",
    "Todos esperam que você falhe. Então, lute até provar que eles estão certos.",
    "Acredite quando falarem que não vai dar certo porque as pessoas são mais inteligentes que você.",
    "Não tenho pressa porque vai dar errado se eu correr ou não. Indo devagar, pelo menos poupo energia.",
    "O caminho não fica mais difícil, você é que fica mais cansado e não aguenta mais.",
    "Nada nunca fica mais fácil. Apenas a dificuldade tem garantia de crescimento.",
    "A frustração me ensinou que fazer nada não gera sofrimento.",
    "Para não se decepcionar, apenas não confie em ninguém, nem em você mesmo.",
    "Não é falta de sorte, é incompetência.",
    "Desistindo de tentar e sendo vitorioso em desistir.",
    "Se você mudar de ângulo, vai perceber que não o outro lado também não é bom.",
    "Você pode trabalhar muito, mas a sua conta bancária continuará no vermelho.",
    "Haverá dias ruins e eles serão sempre maiores que os dias bons.",
    "Sem motivação, sem frustração porque não há ação.",
    "A empolgação da sexta-feira jamais será igual a da segunda porque ninguém gosta de trabalhar.",
    "Lembrar que sou limitado me impede de tentar algo que não sou capaz de fazer.",
    "Conforme o esperado, nada saiu como o planejado.",
    "Tudo certo, nada acontecendo do jeito que eu esperava. Essa é a vida.",
    "Se não fossem os meus boletos, eu não precisaria sair da cama.",
    "No tempo certo, as coisas se ajeitam. Elas dão errado todas de uma vez.",
    "Respire fundo e se prepare para o próximo fracasso.",
    "Decidi que não preciso mais comer ou sonhar porque aí não preciso trabalhar.",
    "As derrotas sempre chegam para os que lutam e para os que nem tentam.",
    "Se há algo em que eu não falho é em perder.",
    "Nunca duvide da sua capacidade de falhar em algo que você irá fazer.",
    "Os outros não são problema seu, mas você é.",
    "Não pense porque já deu tudo errado que as coisas não podem sair ainda mais do controle.",
    "Podemos sempre falhar mais do que já falhamos até agora.",
    "A vida se transforma sempre, às vezes, em algo pior, mas tudo sempre muda.",
    "Não será fácil e, no final, o esforço não valerá a pena.",
    "Você é o único capaz de acabar com seus problemas e também começá-los.",
    "O gosto da vitória é momentâneo, o do fracasso dura para sempre.",
    "A vida é difícil e fica mais difícil se você decide encará-la de frente.",
    "Não arrume briga com a vida, apenas deixe ela acontecer.",
    "Não culpe os outros pelos seus erros quando o culpado foi você que acreditou que ia acertar."
  ];

  String _frase = "";

  void mudarFrase() {
    String frase = "";

    if (_frases.isNotEmpty) {
      int numFrase = (Random().nextInt(_frases.length) + 0);
      frase = _frases[numFrase];
      _frases.remove(frase);
    } else {
      frase =
          "Acabaram as frases desmotivacionais. Re-abra o app para ficar desmotivado";
    }

    setState(() {
      _frase = frase;
    });
  }

  @override
  initState() {
    mudarFrase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Coach Des-Motivacional"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  _frase,
                  style: const TextStyle(
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: mudarFrase,
                  child: const Text(
                    "Clique para mudar a frase...",
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
