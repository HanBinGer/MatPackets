function retval = newtons(f, x0)
  epsilon = 1e-6;
  %prevX = x0;

  x1 = x0 - f(x0) ./ myDiff(f, x0, epsilon);
  %z1 = z0 - f(z0) ./ df;
  for i=0:30
    x1 = x1 - f(x1) ./ myDiff(f, x1, epsilon);
  end

  retval = x1;
end





