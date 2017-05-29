% Code for http://stackoverflow.com/a/37982813/486919

function schrodinger_equation

psi0 = [0;1];
hbar = 1;
% t = 0:1:100;
% t = [0 100];
t = [0 10];
% [T,psi] = ode45(@(t,psi)dpsi(t,psi,hbar),t,psi0);
[T,psi] = ode15s(@(t,psi)dpsi(t,psi,hbar),t,psi0);

for i = 1:length(psi0)
  figure
  plot(T,real(psi(:,i)),T,imag(psi(:,i)))
  legend('Re','Im','Location','best')
end

end

function rhs = dpsi(t,psi,hbar)
  % rhs = 1/(1i*hbar)*cos(t).*ones(2,1);
  rhs = NaN(2,1);
  rhs(1) = 0.3*t*psi(1) + 1.2*t*psi(2);
  rhs(2) = t*psi(1) + t^2*psi(2);

  rhs = 1/(1i*hbar)*cos(t).*rhs;
end
