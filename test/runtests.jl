using SimulacoesTemplate
using Test

@testset "Distance function" begin

   # Testing rpbc
   x = [ 0, 0 ]
   y = [ 12, 12 ]
   side = 10
   @test SimulacoesTemplate.rpbc(x,y,side) ≈ sqrt(8)
   y = [ 17, 17 ]
   @test SimulacoesTemplate.rpbc(x,y,side) ≈ sqrt(18)

end

@testset "Potential Energy" begin

  data = Data()

  @test SimulacoesTemplate.upair(π,data) ≈ -0.0003250451775148634

  p = initial_point(data.N, data.side, 0.9)
  @test utotal(p,data) ≈ -7472.164849146468

end
