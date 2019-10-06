function [root ,fx ,ea ,iter] = bisect(func,xl,xu,es,maxit)
% es = desired error 
% maxit= �ִ����ݺ�Ƚ��

if nargin<3, error('�μ��� �ּ� 3���̻� �Է��ؾ��մϴ�.'), end
test = func(xl)*func(xu);
if test > 0, error('�� �� ������ ��ȣ ��ȭ�� �����ϴ� '),end 
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
    else %�ع߰�
        ea=0;
    end
    if ea<= es | iter >= maxit, break, end              % ,�� ���̰� end�ϴ� �Ǽ� 
end
    root = xr; fx= func(xr);
