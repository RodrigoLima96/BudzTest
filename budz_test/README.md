<img src="README_FILES/badges/built-with-love.svg" height="28px"/>&nbsp;&nbsp;
<img src="README_FILES/badges/flutter-dart.svg" height="28px" />&nbsp;&nbsp;
<img src="README_FILES/badges/Flutter-3.svg" height="28px" />&nbsp;&nbsp;
<img src="README_FILES/badges/dart-null_safety.svg" height="28px"/>

# Teste para vaga dev. Flutter Pleno na Budz
### Este projeto foi desenvolvido como parte de um desafio técnico para a vaga de Desenvolvedor Flutter Pleno na Budz. O objetivo do desafio é criar a tela inicial (home page) utilizando Flutter.

### Durante o desenvolvimento, foram aplicadas as melhores práticas de desenvolvimento mobile, utilizando clean architecture, com foco na construção de uma interface intuitiva, responsiva e de alta performance.

### O projeto busca demonstrar habilidades em arquitetura de software, gerenciamento de estado, e otimização de UI/UX. O design da tela inicial foi cuidadosamente copiado com fidelidade ao projeto fornecido no Figma, garantindo que todos os elementos visuais, espaçamentos e interações estivessem alinhados com o layout original. O resultado final é uma réplica precisa da UI proposta, mantendo a qualidade e a estética desejadas para o aplicativo.
<br>

## Observações

### Em alguns pontos da UI, tomei a decisão de utilizar assets fixos em vez dos dados do JSON proposto. Essa escolha foi feita exclusivamente para fins estéticos, com o objetivo de criar uma cópia mais fidedigna ao material fornecido no Figma. As áreas em que apliquei essa abordagem incluem:
* ### Foto do pet
* ### Detalhes do pet

### Dessa forma, pude garantir que a interface visual permanecesse o mais próxima possível do design original, mantendo a consistência e qualidade visual desejadas para o projeto.
### Para manter a flexibilidade do código e permitir futuras alterações, deixei o widget que utiliza os dados vindos do JSON comentado acima do código que utiliza os dados fixos. Dessa forma, a adaptação para usar o conteúdo dinâmico pode ser feita facilmente, bastando descomentar o código correspondente.

<br>

## Como Rodar o Projeto

### Requisitos

Antes de rodar o projeto, certifique-se de ter os seguintes requisitos instalados:
- [Flutter](https://flutter.dev/docs/get-started/install) (versão 3.19.5 ou superior)
- [Dart](https://dart.dev/get-dart) (versão 3.3.3 ou superior)
- [Editor de Código](https://flutter.dev/docs/get-started/editor) (como Visual Studio Code ou Android Studio)

### Passos para Rodar o Projeto

1. **Clone o Repositório**

   Clone o repositório do projeto para sua máquina local:

   ```bash
   git clone https://github.com/RodrigoLima96/BudzTest
2. **Navegue até o Diretório do Projeto**

   Acesse o diretório do projeto:

   ```bash
   cd BudzTest
3. **Navegue até o Diretório do Projeto flutter**

   Acesse o diretório do projeto flutter:

   ```bash
   cd budz_test
4. **Instale as Dependências**

   Execute o comando para instalar as dependências do projeto:

   ```bash
   flutter pub get
5. **Execute o Projeto**

   Execute o projeto no emulador ou dispositivo conectado:

   ```bash
   flutter run
## Versão APK

### Além do código-fonte, disponibilizamos também uma versão do APK do aplicativo para facilitar a visualização e testes.

<p align="center">
  <a href="https://drive.google.com/file/d/1HgUYIUmTryKuTbOfdEDI1D17Exy4ZqEf/view?usp=drive_link">
    <img src="README_FILES/images/apk_download.png" alt="Time Sense" style="display: inline-block; width: 200px;"/>
  </a>
</p>


## Dependencies
<details>
     <summary> Click to expand </summary>

* [flutter_modular](https://pub.dev/packages/flutter_modular)
* [flutter_svg](https://pub.dev/packages/flutter_svg)
* [dartz](https://pub.dev/packages/dartz)
* [mobx](https://pub.dev/packages/mobx)
* [flutter_mobx](https://pub.dev/packages/flutter_mobx)
* [banner_carousel](https://pub.dev/packages/banner_carousel)

### Dev Dependencies
* [build_runner](https://pub.dev/packages/build_runner)
* [mobx_codegen](https://pub.dev/packages/mobx_codegen)

</details>