abstract Model

type NNMatrix # Neural net layer's weights & gradients
    n::Int
    d::Int
    w::Array # matix of weights
    dw::Array # matix of gtadients
    NNMatrix(n::Int) = new(n, 1, zeros(n), zeros(n))
    NNMatrix(n::Int, d::Int) = new(n, d, zeros(n,d), zeros(n,d))
    NNMatrix(n::Int, d::Int, w::Array, dw::Array) = new(n, d, w, dw)
end

randNNMat(n::Int, d::Int, std::FloatingPoint) = NNMatrix(n, d, randn(n,d)*std, zeros(n,d))



