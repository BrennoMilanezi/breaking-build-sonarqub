# Breaking Build com a Qualidade do Sonarqube

Esse é um scrpit criado para quebrar o Build do Travis caso a nota do Sonarqube não seja adequada. 

## Utilização
1) Copie o arquivo buildbreaksonar.sh para o seu projeto
2) Adicione as seguintes linhas no .travis.yml

```
before_install:
  - sudo apt-get install -y jq
  
script:
  - sonar-scanner > sonar.txt
  - sh buildbreaksonar.sh sonar.txt <token_do_sonar> <URL do Servidor do Sonar>
  - rm sonar.txt
```

Veja o exemplo no .travis.yml deste projeto.
