module SimulacoesTemplate
 
  include("Data.jl")
  export Data

  include("./initial-point.jl")
  export initial_point

  include("./rpbc.jl") 
  include("./upair.jl")
  include("./utotal.jl")
  export utotal

  include("./linear_index.jl")
  export linear_index

  include("./utotal_parallel.jl")
  export utotal 
  export utotal_parallel1
  export utotal_parallel2

  include("./forcepair.jl")
  include("./energyandforce.jl")
  export energyandforce!

end
