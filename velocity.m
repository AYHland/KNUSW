function v = velocity(t)
num = length(t);
for i = 1 : length(t)
if (0<=t(i) && t(i)<=8)   v(i)= 10*t(i).^2-5*t(i); %if (0<=t && t<=8)   v= 10*t.^2-5*t; ó���� �̰ɷ� ���� 
elseif(8<=t(i) && t(i)<=16)   v(i)= 624-5*t(i)  % �׷��� �̷����ϸ� t�� ������ ���� t�� ũ�⿡ ���� ���� �б⸦ �� �� ������ .
elseif(16<=t(i) && t(i)<=26) v(i)= 36*t(i) + 12*(t(i)-16).^2; 
elseif(t(i)>26) v(i) = 2136*exp(-0.1*(t(i)-6))% v(i)���ϰ� v�ϸ� ���� �ȵ�!!!y ��� �ٲ�! 
else 
    v(i)=0;
    
end
end
end
%plot(t,v); grid; title('velocity'); xlabel('time'); ylabel('velocity')'