#### CONCLUIO

- [x] criar as telas para os input
- [x] check list para os input, usuario o usuario tera mais de duas opção 
- [x] add o drop de pesticidas
- [x] gerar o grafico, transformar a classe screen em graficos
- [x] Criar uma pasta com todos os widget - dropdown 
- [x] problemas com as lista, precisa criar lista em cima de lista

#### ANDAMENTO
- [ ] melhorar o layout
- [ ]  Trabalhar no calculo
    - [ ] Conversar com Breno
    - [ ] Perguntar ao professor Sobre
    - [ ] Carregar os checkbox marcados @@ https://medium.com/flutter-comunidade-br/flutter-descomplica-lista-de-checkbox-1e0dca525cb

- [ ] Arrumar o Sobre

- [ ] icons dos input ex irrigação

#### FUNCIONAMENTO DO 'CheckboxListTile' COM STATUS
~~~

  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;

          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: checkboxValue1,
            onChanged: (bool? value) {
              setState(() {
                checkboxValue1 = value!;
              });
            },
            title: const Text('Headline'),
            //subtitle: const Text('Supporting text'),
          ),
~~~