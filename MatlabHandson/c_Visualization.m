%create vector for x co-ordinate and y values

x = [0 , 1,2,3,4,5]
y = [1,0,.22, sin(2), exp(1), log(5)]
plot(x,y)
plot(x,y, 'm:s')
plot(x,y, 'r--')
plot(x,y, 'g--*')

%annotate the graph
%Lable axes, add title and lengend

plot(x,y, 'm:s')
xlabel('Time [s]')
ylabel('Amplitude')
title ('My Plot')
legend('y(t)')


%% historgram
hist( -6 +  3* randn(1, 10000),500)