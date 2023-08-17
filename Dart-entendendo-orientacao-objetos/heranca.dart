void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String corFruta = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  String cor = 'Verde';
  int diasDesdeColheita = 20;
  bool isMadura;

  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia = Nozes('Macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca.printAalimento();
  banana.printAalimento();
  macadamia.printAalimento();
  limao.printAalimento();

  mandioca.cozinhar();
  limao.fazerSuco();

  banana.separarIngredientes();
  macadamia.fazerMassa();
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}):super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void separarIngredientes() {
    print('Catar a $nome');
  }

  @override
  void fazerMassa() {
    print('Misturar a $nome com farinha, açucar, ovos...');
  }
 
  @override
  void assar() {
    print('Colocar no forno');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAalimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinhar;
  
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar):super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando');
    } else {
      print('O $nome nem precisa cozinhar');
    }
  }

  @override
  void separarIngredientes() {
    print('Catar a frunta');
  }

  @override
  void fazerMassa() {
    print('Misturar a fruta com farinha, açucar, ovos...');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double pesa, String cor, String sabor, int diasDesdeColheita, this.nivelAzedo): super(nome, pesa, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if(existe) {
      print('Existe refri de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double pesa, String cor, String sabor, int diasDesdeColheita, this.porcentagemOleoNatural): super(nome, pesa, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

//Classe Abstrata

abstract class Bolo {
  void assar();
  void fazerMassa();
  void separarIngredientes();
}