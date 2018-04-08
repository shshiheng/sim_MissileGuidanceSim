%Visualization
% clf

%% Draw Trajectory Dynamically - Figure1
% figure(1)
% i=1;
% Size = size(t,1);
% while i<Size
%     plot(Xm(i),Ym(i),'r.',Xt(i),Yt(i),'b.'),grid
%     i=i+50;
%     hold on
%     pause(0.0001)
% end
% title('Track')
% xlabel('x')
% ylabel('y')
% legend('Target','Missile');

%% Trajectory - Figure 1
figure(1)
plot(Xt,Yt,'r-',Xm,Ym,'b.-','LineWidth',2),grid
title('Guidance Trajectory')
xlabel('x')
ylabel('y')
legend('Target','Missile');
hold on

%% Overload - Figure 2
figure(2)
plot(t,overload,'-','LineWidth',2),grid
title('Overload')
xlabel('Time')
ylabel('Overload(g)')
hold on
