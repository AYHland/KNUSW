function [r, theta] = Topolar(x,y)

r = sqrt(x.^2+y.^2); % !!dot operator!!. ���Ϳ��� �������ؼ�  
theta = atan(y./x);
disp('     x           y        r           ��' ) % ǥ���·� ����ϱ� 
disp([ x y r theta] ) %check
end