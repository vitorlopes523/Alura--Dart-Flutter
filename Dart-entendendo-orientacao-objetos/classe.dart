void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String corFruta = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  String cor = 'Verde';
  int diasDesdeColheita = 20;
  bool isMadura;

  if(diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
 
  Fruta fruta1 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta2 = Fruta('uva', 40, 'Roxa', 'doce', 20);

}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura");
  }
}
