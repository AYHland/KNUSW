function v = velocity(t)
num = length(t);
for i = 1 : length(t)
if (0<=t(i) && t(i)<=8)   v(i)= 10*t(i).^2-5*t(i); %if (0<=t && t<=8)   v= 10*t.^2-5*t; 처음에 이걸로 했음 
elseif(8<=t(i) && t(i)<=16)   v(i)= 624-5*t(i)  % 그러나 이렇게하면 t가 벡터일 때는 t의 크기에 따라 조건 분기를 할 수 없었음 .
elseif(16<=t(i) && t(i)<=26) v(i)= 36*t(i) + 12*(t(i)-16).^2; 
elseif(t(i)>26) v(i) = 2136*exp(-0.1*(t(i)-6))% v(i)안하고 v하면 절대 안됨!!!y 계속 바뀜! 
else 
    v(i)=0;
    
end
end
end
%plot(t,v); grid; title('velocity'); xlabel('time'); ylabel('velocity')'