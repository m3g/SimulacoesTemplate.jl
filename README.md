# SimulacoesTemplate

Este pacote contém a implementação básica de uma função de energia
potencial de um sistema bidimensional. Contém uma estrutura de dados
simples e testes.  

O pacote com todas suas características foi gerado na seguinte aula:

[![IMAGE ALT TEXT](https://i9.ytimg.com/vi/WMq1d_2Jy9Q/maxresdefault.jpg)](http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE "Video Title")

Instale com:

```julia
] add https://github.com/m3g/SimulacoesTemplate.jl
```

Uso elementar:

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



