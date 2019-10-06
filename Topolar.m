function [r, theta] = Topolar(x,y)

r = sqrt(x.^2+y.^2); % !!dot operator!!. 벡터에도 쓰기위해서  
theta = atan(y./x);
disp('     x           y        r           θ' ) % 표형태로 출력하기 
disp([ x y r theta] ) %check
end