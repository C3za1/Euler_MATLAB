%Ingresamos nuestras variables
syms x
syms y

%llamar la funcion varias beces
f=inline(input('ingrese la derivada:','s'));
%Ingresar los valores
x=input('ingrese val x:');
xf=input('ingrese val final de x:');
y=input('ingrese val y:');
%Para el tamaño de paso
h=input('ingrese val h:');
%Ingresar en numero de iteraciones
n=(xf-x)/h
clc
%Nos sirbe para mostrar los datos de numero de iteraciones
disp('x(n) y(n)');

%metodo iterativo
for i=1:n+1
%Para evaluar funcion x and y
y1=feval(f,x,y);
%Metodo para calcular y=y+hy1;
hy1=h*y1;
fprintf('\n%0.1f %0.4f ',x,y);
y=y+hy1;
x=x+h;
end

%Para motrar
%ingresar la derivada definida
%sqrt sirve para expresar la raiz en y

%sqrt(y)/(2*x+1)
%x:0 xf:2 y:4 h:0.5

%result
%el paso/aproximaciones
