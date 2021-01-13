
function simulate(data,p,v,m,nsteps,dt,iprint)
  f = [ zeros(2) for i in 1:data.N ]
  for i in 1:nsteps
    u, f = energyandforce!(p,f,data)
    for ip in 1:length(p)
      @. p[i] = p[i] + v[i]*dt + f[i]*dt^2/(2*m)
      @. v[i] = v[i] + f[i]*dt/m
    end
    if i%iprint == 0
      println(" Step $i, Energy = $u ")
    end
  end
end

