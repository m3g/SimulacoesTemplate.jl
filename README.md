# SimulacoesTemplate

Este pacote contém a implementação básica de uma função de energia
potencial de um sistema bidimensional. Contém uma estrutura de dados
simples e testes. 

## Conteúdo

O pacote com todas suas características foi gerado na seguinte aula:

[![YOUTUBE VIDEO](https://raw.githubusercontent.com/m3g/SimulacoesTemplate.jl/master/docs/video_image.png)](https://www.youtube.com/watch?v=6M_YpNrrtKM "Julia: Criando pacotes, estruturas, e desenvolvimento.")

### Índice do vídeo

1. [Conceitos básicos: Github](https://youtu.be/6M_YpNrrtKM?t=22)
2. [Usando PkgTemplates](https://youtu.be/6M_YpNrrtKM?t=477)
    * [Numerando versões](https://youtu.be/6M_YpNrrtKM?t=720)
    * [Gerando o template](https://youtu.be/6M_YpNrrtKM?t=1209)
    * [Project.toml](https://youtu.be/6M_YpNrrtKM?t=1375)
    * [runstests.jl](https://youtu.be/6M_YpNrrtKM?t=1748)
3. [Criando um repositório para o pacote](https://youtu.be/6M_YpNrrtKM?t=1780)
    * [Fazendo upload de uma nova versão](https://youtu.be/6M_YpNrrtKM?t=2556)
4. [Criando uma nova função](https://youtu.be/6M_YpNrrtKM?t=2817)
    * [Criando um teste](https://youtu.be/6M_YpNrrtKM?t=2886)
4. [Criando uma nova função](https://youtu.be/6M_YpNrrtKM?t=2817)


## Instale com:

```julia
] add https://github.com/m3g/SimulacoesTemplate.jl
```

## Uso elementar:

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



