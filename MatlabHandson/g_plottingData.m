t = [0: 0.01 :0.98]
ysin = sin(2*pi*4*t)

plot(t,ysin,'g')

ycos = cos(2*pi*4*t)
hold on;
plot(t,ycos, 'r')
xlabel('time');
ylabel('value')
legend('sin','cos')
title('my plot')
% plot in two different
close % close earier figure
figure(1); plot(t,ysin)
figure(2); plot(t,ycos)

%sub plot: devide the plot in grid
subplot(1,2,1)
plot(t,ysin,'g')
legend('sin')
subplot(1,2,2)
plot(t,ycos, 'r')
legend('cos')

axis([0.5 1 -1 1]) % set x and y range

close
A = magic(5)
image(A)
imagesc(A), colorbar, colormap gray
