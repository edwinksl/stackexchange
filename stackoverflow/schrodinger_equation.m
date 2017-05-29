% Code for http://stackoverflow.com/a/37982813/486919

function schrodinger_equation

  psi0 = [0;1];
  hbar = 1;
  t = [0 100];
  [T,psi] = ode15s(@(t,psi)dpsi(t,psi,hbar),t,psi0);

  for i = 1:length(psi0)
    figure
    plot(T,real(psi(:,i)),T,imag(psi(:,i)))
    xlabel('t')
    ylabel('Re(\psi) or Im(\psi)')
    title(['\psi_0 = ' num2str(psi0(i))])
    legend('Re(\psi)','Im(\psi)','Location','best')
  end

end

function rhs = dpsi(t,psi,hbar)
  rhs = 1/(1i*hbar)*cos(t).*ones(2,1);
end
