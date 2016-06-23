% Code for http://stackoverflow.com/a/37982813/486919

function schrodinger_equation

close all
clc

psi0 = [0;1];
hbar = 1;
t = 0:1:100;
[T,psi] = ode45(@(t,psi)dpsi(t,psi,hbar),t,psi0);

for i = 1:length(psi0)
  figure
  plot(T,real(psi(:,i)),T,imag(psi(:,i)))
  legend('Re','Im')
end

end

function rhs = dpsi(t,psi,hbar)
  rhs = 1/(1i*hbar)*cos(t).*ones(2,1);
end
