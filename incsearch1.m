function xb = incsearch1(func,xmin,xmax,ns) 
% ns : 구간 간 탐색 길이
if nargin <3, disp('탐색 구간을 정의하세요'), end
if nargin <4, ns = 50; end % of ns blank -> set to 50 

%탐색 
x = linspace(xmin,xmax,ns);
f = func(x); % creat list of func(x) 
nb= 0; xb = []; %nb = 브라켓개수, xb 초기화 x는 2xn matrix 
for k = 1:length(x)-1
   if sign(f(k)) ~= sign(f(k+1)) 
    nb = nb+1;
    xb(nb,1) = x(k); 
    xb(nb,2)= x(k+1);
   end 
end
if isempty(xb)
disp('no braket found'), disp('반복 횟수') , disp(nb);
else, disp('반복 횟수') , disp(nb);
end