function xb = incsearch1(func,xmin,xmax,ns) 
% ns : ���� �� Ž�� ����
if nargin <3, disp('Ž�� ������ �����ϼ���'), end
if nargin <4, ns = 50; end % of ns blank -> set to 50 

%Ž�� 
x = linspace(xmin,xmax,ns);
f = func(x); % creat list of func(x) 
nb= 0; xb = []; %nb = ����ϰ���, xb �ʱ�ȭ x�� 2xn matrix 
for k = 1:length(x)-1
   if sign(f(k)) ~= sign(f(k+1)) 
    nb = nb+1;
    xb(nb,1) = x(k); 
    xb(nb,2)= x(k+1);
   end 
end
if isempty(xb)
disp('no braket found'), disp('�ݺ� Ƚ��') , disp(nb);
else, disp('�ݺ� Ƚ��') , disp(nb);
end