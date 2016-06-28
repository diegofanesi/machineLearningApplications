function X = Projection(V,W)
  X = Product(V,Normalize(W))* Normalize(W);
end