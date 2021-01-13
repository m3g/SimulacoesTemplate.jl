#
# Generate initial-velocities
#

import Random

"""

```
initial_velocities(N;T=298.15,R=8.3145,m=1.0,seed=123)
```

Generates a vector of initial velocities for `N` particles of 
mass `m`, in two dimensions according to the Maxwell-Boltzmann distribution. By
default the result will be output in ms⁻¹, according to the dimensions
of the gas constant `R`. 

## Example

```
v = initial_velocities(10_000)
```

Use a random seed:

```
v = initial_velocities(10_000,100,0.5,seed=-1)
```

"""
function initial_velocities(N;T=298.15,R=8.3145,m=1.0,seed=123)
  # Use a different seed if desired
  seed > 0 ?  Random.seed!(seed) : Random.seed!()
  # Create velocity vector
  v = [ initial_velocity(T,R,m) for i in 1:N ]
  return v
end

# initial_velocity for one particle
function initial_velocity(T,R,m)
  # Inverse of cumulative distribution of p(v)dv
  vmod = sqrt( -(2*R*T/m) * log(1-rand()) )
  θ = 2π*rand()
  return [ vmod*cos(θ), vmod*sin(θ) ]
end

# From the data structure
initial_velocities(data::Data;T=298.15,R=8.3145,m=1.0,seed=123) = 
   initial_velocities(data.N,T=T,R=R,m=m,seed=seed)

