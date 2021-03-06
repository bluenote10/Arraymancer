import math, times, strformat
import ../src/arraymancer

const
  dz = 0.01
  z = 100
  spaceSteps = int(z / dz)
  timeSteps = 50000
  dt = 0.12 / timeSteps
  alpha = 2.0
  startingTemp = 30.0
  oscillations = 20.0

proc f(T: Tensor[float]): Tensor[float] =
  let d2T_dz2 = (T[_, 0..^3] - 2.0 * T[_, 1..^2] + T[_, 2..^1]) / dz^2
  return alpha * d2T_dz2

proc eulerSolve(Ts: var Tensor[float]) =
  for t in 0 ..< timeSteps-1:
    Ts[t+1, 1..^2] = Ts[t, 1..^2] + dt * f(Ts[t, _])
    Ts[t+1, ^1] = Ts[t+1, ^2]

proc main() =
  var
    # Ts = newTensorWith[float]([timeSteps, spaceSteps], startingTemp) # This cut to 10 sec
    Ts = startingTemp * ones[float](timeSteps, spaceSteps)

  for j in 0 ..< timeSteps:
    Ts[j, 0] = startingTemp - oscillations * sin(2.0 * PI * j.float / timeSteps)

  Ts.eulerSolve()

let start = cpuTime()
main()
let stop = cpuTime()

let elapsed = stop - start
echo &"Arraymancer Euler solve - time taken: {elapsed} seconds"


# Measurement on i5-5257U (Dual core mobile Broadwell 2.7Ghz)
# Arraymancer Euler solve - time taken: %20.569555 seconds
# 23.32s, 3090.0Mb (as measured by xtime.rb)
