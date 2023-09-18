#### CONCLUIO

- [x] criar as telas para os input
- [x] check list para os input, usuario o usuario tera mais de duas opção 
- [x] add o drop de pesticidas
- [x] gerar o grafico, transformar a classe screen em graficos
- [x] Criar uma pasta com todos os widget - dropdown 
- [x] problemas com as lista, precisa criar lista em cima de lista
- [x] fertilizantes cobertura -- falta o botão
- [x] build classe fertilizantes Plantio
- [x] build classe irrigação + Maquinas + Pesticidas

#### ANDAMENTO

- [ ] melhorar o layout
- [ ]  Trabalhar no calculo
    - [ ] Conversar com Breno
    - [ ] Perguntar ao professor Sobre

- [ ] Arrumar o Sobre

- [ ] colocar a logo da unesp

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