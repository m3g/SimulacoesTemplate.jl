# SimulacoesTemplate

Este pacote contém a implementação básica de uma função de energia
potencial de um sistema bidimensional. Contém uma estrutura de dados
simples e testes. 

## Conteúdo

1. [Implementação inicial](#impl)
2. [Instalação](#install)
3. [Paralelização do cálculo de interaçoes](#parallel)

## O pacote com todas suas características foi gerado na seguinte aula: <a name="impl"></a>

[![YOUTUBE VIDEO](https://raw.githubusercontent.com/m3g/SimulacoesTemplate.jl/master/docs/video_image.png)](https://www.youtube.com/watch?v=6M_YpNrrtKM "Julia: Criando pacotes, estruturas, e desenvolvimento.")

### Índice do vídeo

1. [Conceitos básicos: Github](https://youtu.be/6M_YpNrrtKM?t=22)
2. [Usando `PkgTemplates`](https://youtu.be/6M_YpNrrtKM?t=477)
    * [Numerando versões](https://youtu.be/6M_YpNrrtKM?t=720)
    * [Gerando o template](https://youtu.be/6M_YpNrrtKM?t=1209)
    * [Project.toml](https://youtu.be/6M_YpNrrtKM?t=1375)
    * [runstests.jl](https://youtu.be/6M_YpNrrtKM?t=1748)
3. [Criando um repositório para o pacote](https://youtu.be/6M_YpNrrtKM?t=1780)
    * [Fazendo upload de uma nova versão](https://youtu.be/6M_YpNrrtKM?t=2556)
4. [Criando uma nova função](https://youtu.be/6M_YpNrrtKM?t=2817)
    * [Criando um teste](https://youtu.be/6M_YpNrrtKM?t=2886)
    * [Atualizando o pacote](https://youtu.be/6M_YpNrrtKM?t=3227)
5. [Desenvolvimento o pacote localmente](https://youtu.be/6M_YpNrrtKM?t=3423)
    * [Clonando o repositorio manualmente](https://youtu.be/6M_YpNrrtKM?t=3963)
    * [Usando um fork](https://youtu.be/6M_YpNrrtKM?t=4117)
    * [Criando um pull-request](https://youtu.be/6M_YpNrrtKM?t=4406)
6. [Introduzindo funções no módulo principal](https://youtu.be/6M_YpNrrtKM?t=4680)
    * [Incluindo arquivos](https://youtu.be/6M_YpNrrtKM?t=4870)
    * [Exportando a função](https://youtu.be/6M_YpNrrtKM?t=4933)
    * [Adicionando uma dependência](https://youtu.be/6M_YpNrrtKM?t=4953)
    * [Distância usando PBC](https://youtu.be/6M_YpNrrtKM?t=5370)
    * [Criando um teste](https://youtu.be/6M_YpNrrtKM?t=5500)
    * [Função de energia potencial de um par de partículas](https://youtu.be/6M_YpNrrtKM?t=6136)
7. [Estrutura de dados](https://youtu.be/6M_YpNrrtKM?t=6370)
    * [Energia potencial de todas as partículas](https://youtu.be/6M_YpNrrtKM?t=6573)
    * [Inicializando os dados](https://youtu.be/6M_YpNrrtKM?t=6897)
    * [Criando geradores para os dados](https://youtu.be/6M_YpNrrtKM?t=7400)
    * [Tipo de parâmetro de uma função](https://youtu.be/6M_YpNrrtKM?t=7876)
    * [Tipos paramétricos e uniões](https://youtu.be/6M_YpNrrtKM?t=8015)
    * [Usando `Parameters`](https://youtu.be/6M_YpNrrtKM?t=8249)
    * [Adicionando uma entrada de `compat`](https://youtu.be/6M_YpNrrtKM?t=8450)
8. [Instruções para modificar o pacote em adiante](https://youtu.be/6M_YpNrrtKM?t=9125)
    * [Atualizando e testando o pacote](https://youtu.be/6M_YpNrrtKM?t=9372)
    * [Criando um novo método para `initial_point`](https://youtu.be/6M_YpNrrtKM?t=9488)
    * [Bebê caiu](https://youtu.be/6M_YpNrrtKM?t=9720)
    * [Clonando o repositório](https://youtu.be/6M_YpNrrtKM?t=9975)

## Instale com: <a name="install"></a>

```julia
] add https://github.com/m3g/SimulacoesTemplate.jl
```

### Uso elementar:

```julia
julia> using SimulacoesTemplate

julia> data = Data() # Default parameters
Data
  eps: Float64 5.0
  sig: Float64 0.5
  cutoff: Float64 2.0
  side: Float64 100.0
  N: Int64 10000
  eps4: Float64 20.0
  sig6: Float64 0.015625
  sig12: Float64 0.000244140625


julia> p = initial_point(data); # Initial point

julia> utotal(p,data) # Compute total energy
-7472.164849146468

julia> data = Data(sig=1.0) # Increase sigma, for example
Data
  eps: Float64 5.0
  sig: Float64 1.0
  cutoff: Float64 2.0
  side: Float64 100.0
  N: Int64 10000
  eps4: Float64 20.0
  sig6: Float64 1.0
  sig12: Float64 1.0


julia> utotal(p,data)
9323.71350809503

```

## Paralelização do cálculo das interações <a name="parallel"></a>

As funções em `utotal_parallel` foram implementadas na seguinte aula:

[![YOUTUBE VIDEO](https://raw.githubusercontent.com/m3g/SimulacoesTemplate.jl/master/docs/aula_parallel.png)](https://youtu.be/V70tvYdv8QY "Paralelizando o cálculo das interações.")





