fucntion [fx, ea, iter] = IterMeth(x,es,maxit)  %예제 4.1 
if (nargin<3 | isempty(maxit)), maxit=50; end  %%3. 중복되는거 maxit ,es 등 하나만 썼다. 
if (nargin<2 | isempty(es)), es = 0.0001; end %%1. if문 간결하게쓰는거.  2. while문 따로블럭없음 
iter =1; fx=1; ea=100;oldsol=1;% or을 i로 하는실수!! \이거로해야함 
while(1)
oldsol = sol;
sol = oldsol + x^(iter-1)/factorial(iter-1); %% factorial 내장 
  
iter = iter +1;
if sol~=0
    ea = abs(((sol-oldsol)/sol)*100);
end
if (ea<=es | iter >= maxit), break, end %쓴거보기  
fx= sol;
end
 %함수 자체 끝내는거 end 해줘야함!  

    
    
    