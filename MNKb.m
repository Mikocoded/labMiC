function [a, da, b, db] = MNKb(x, y)
    n = length(x); 
    sumxy = 0;
    sumx2 = 0;
    sumx = 0;
    sumy = 0;
    
    for i = 1:n
        sumxy = sumxy + x(i) * y(i);
        sumx2 = sumx2 + x(i) * x(i);
        sumx = sumx + x(i);
        sumy = sumy + y(i);
    end
    
    denom = n * sumx2 - sumx^2;  
    a = (n * sumxy - sumx * sumy) / denom;
    b = (sumx2 * sumy - sumx * sumxy) / denom;
    
    dasum = 0;
    for i = 1:n
        dasum = dasum + (y(i) - (a * x(i) + b))^2;
    end
    
    da = sqrt((n * dasum) / ((n - 2) * denom));
    db = da * sqrt(sumx2 / n);
end