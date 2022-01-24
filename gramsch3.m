function [Q] = gramsch(v1, v2, v3)
    
    r11 = norm(v1)
    q1 = v1/r11
    
    r12 = (v2'*q1)
    p1 = r12*q1
    disp(p1)
    r22 = norm(v2-p1)
    q2 = (v2-p1)/r22
    
    r13 = v3'*q1
    r23 = v3'*q2
    p2 = r13*q1+r23*q2
    disp(p2)
    r33 = norm(v3-p2)
    q3 = (v3-p2)/r33
    
    Q = [q1 q2 q3]
    R = [r11 r12 r13; 0 r22 r23; 0 0 r33]
    
end