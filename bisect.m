function [root ,fx ,ea ,iter] = bisect(func,xl,xu,es,maxit)
% es = desired error 
% maxit= 최대허용반복횟수

if nargin<3, error('인수를 최소 3개이상 입력해야합니다.'), end
test = func(xl)*func(xu);
if test > 0, error('두 수 사이의 부호 변화가 없습니다 '),end 
if nargin<4|isempty(es), es=0.0001; end
if nargin<5|isempty(maxit), maxit=100; end 
iter=0; ea=100;
xr=xl; 
while(1)
    xrold=xr;
    xr = ((xu+xl)/2);
    iter= iter+1;
    test= func(xr) * func(xl);
    if xr~=0, ea= abs((xr-xrold)/xr)*100; end
    if test<0;
        xu=xr;
    elseif test>0;
        xl=xr;
    else %해발견
        ea=0;
    end
    if ea<= es | iter >= maxit, break, end              % ,안 붙이고 end하는 실수 
end
    root = xr; fx= func(xr);
