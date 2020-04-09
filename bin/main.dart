Future<String> criarMensagem() async {
  var usuario = await buscarUsuario();
  return 'Enviando mensagem para o usuário: $usuario';
}

Future<String> buscarUsuario() => Future.delayed(
      Duration(seconds: 2),
      () => 'profflavio.moreni@fiap.com.br',
    );

// Método main é void então não é necessário usar "Future<>"
void main() async{
  print('Criando a mensagem ...');
  print(await criarMensagem());
}
