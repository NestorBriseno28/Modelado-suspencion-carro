[t,x] = ode45(@Suspencion, [0 10], [0 0 0 0]);
figure (1)
plot(t,x(:, 1));
grid on
title('Posicion');
xlabel('Tiempo');
ylabel('metros');
figure (2)
plot(t,x(:, 2));
grid on
title('Posicion');
xlabel('Tiempo');
ylabel('Metros');
