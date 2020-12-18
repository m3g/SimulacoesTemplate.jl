#
# Computes the total potential energy of the system
#

function utotal_parallel1(p,data)
  nthreads = Threads.nthreads()
  utotal = zeros(nthreads)
  @inbounds Threads.@threads for ip in 1:data.N-1
    id = Threads.threadid()
    for jp in ip+1:data.N
      rij = rpbc(p[ip],p[jp],data.side)
      if rij < data.cutoff
        utotal[id] += upair(rij,data) 
      end
    end
  end
  return sum(utotal)
end

function ij_pair(N)
  npairs = div(N*(N-1),2)
  ij = Matrix{Int}(undef,npairs,2) 
  for ipair in 1:npairs 
    ij[ipair,1], ij[ipair,2] = linear_index(ipair)
  end
  return ij
end
export ij_pair

function utotal_serial2(p,data,ij)
  @unpack N, side, cutoff = data
  npairs = div(N*(N-1),2)
  utotal = 0.
  @inbounds for ipair in 1:npairs
    ip = ij[ipair,1]
    jp = ij[ipair,2]
    rij = rpbc(p[ip],p[jp],side)
    if rij < cutoff
      utotal += upair(rij,data) 
    end
  end
  return utotal
end
export utotal_serial2


function utotal_parallel2(p,data,ij)
  nthreads = Threads.nthreads()
  @unpack N, side, cutoff = data
  npairs = div(N*(N-1),2)
  utotal = zeros(nthreads)
  n_per_thread = div(npairs,nthreads)
  if mod(npairs,nthreads) != 0
    error(" mod(npairs,nthreads) != 0 ")
  end
  Threads.@threads for id in 1:nthreads
    ifirst = (id-1)*n_per_thread + 1
    ilast = ifirst - 1 + n_per_thread
    @inbounds for ipair in ifirst:ilast
      ip = ij[ipair,1]
      jp = ij[ipair,2]
      rij = rpbc(p[ip],p[jp],side)
      if rij < cutoff
        utotal[id] += upair(rij,data) 
      end
    end
  end
  return sum(utotal)
end



