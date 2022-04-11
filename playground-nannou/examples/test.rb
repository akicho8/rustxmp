require "matrix"
Vector[2, 3] + 1            rescue $! # => #<TypeError: 1 can't be coerced into Vector>
Vector[2, 3] * Vector[4, 5] rescue $! # => #<ExceptionForMatrix::ErrOperationNotDefined: Operation(*) can't be defined: Vector op Vector>

require "matrix"
Vector[2, 3] + Vector[1, 1]                     # => Vector[3, 4]
Vector[2, 3].map2(Vector[4, 5]) {|a, b| a * b } # => Vector[8, 15]

Vector[2, 3].r                  # => 3.605551275463989
Vector[2, 3].norm                  # => 3.605551275463989
Vector[2, 3].magnitude                  # => 3.605551275463989

v = Vector[2.0, 3.0]
r = v.magnitude  # => 3.605551275463989
d = (3.7 - r)
d                               # => 0.09444872453601105

Vector[2.0523908, 3.078586].r   # => 3.6999999669352213

Vector[2, 3].r           # => 3.605551275463989
Vector[2, 3].normalize   # => Vector[0.5547001962252291, 0.8320502943378437]

Vector[2, 3].normalize.r          # => 1.0
