function retval = randexp (lambda, N=1000)
  retval = -1/lambda * log(1-rand(1,N))
end
