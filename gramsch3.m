function [U] = gramsch3(v1, v2, v3)
    
    u1 = v1/norm(v1);
    
    p1 = (v2'*u1)*u1;
    u2 = (v2-p1)/norm(v2-p1);
    
    p2 = (v3'*u1)*u1+(v3'*u2)*u2;
    u3 = (v3-p2)/norm(v3-p2);
    
    U = [u1 u2 u3];
    
end