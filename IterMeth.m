fucntion [fx, ea, iter] = IterMeth(x,es,maxit)  %���� 4.1 
if (nargin<3 | isempty(maxit)), maxit=50; end  %%3. �ߺ��Ǵ°� maxit ,es �� �ϳ��� ���. 
if (nargin<2 | isempty(es)), es = 0.0001; end %%1. if�� �����ϰԾ��°�.  2. while�� ���κ����� 
iter =1; fx=1; ea=100;oldsol=1;% or�� i�� �ϴ½Ǽ�!! \�̰ŷ��ؾ��� 
while(1)
oldsol = sol;
sol = oldsol + x^(iter-1)/factorial(iter-1); %% factorial ���� 
  
iter = iter +1;
if sol~=0
    ea = abs(((sol-oldsol)/sol)*100);
end
if (ea<=es | iter >= maxit), break, end %���ź���  
fx= sol;
end
 %�Լ� ��ü �����°� end �������!  

    
    
    