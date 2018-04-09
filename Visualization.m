%Visualization
% clf

%% The last digit should be ignored, since the final closing velocity(Vclosing) is positive.
Xm(end,:)=[];Ym(end,:)=[];
Xt(end,:)=[];Yt(end,:)=[];
Vtx(end,:)=[];Vty(end,:)=[];
Vmx(end,:)=[];Vmy(end,:)=[];
Vclosing(end,:)=[];overload(end,:)=[];
t(end,:)=[];tout(end,:)=[];
Rtm(end,:)=[];Omega_tm(end,:)=[];

%% Line Type
if GuidanceMethod(1) == 1
    MissileTrajColor = 'b';
    TrajLegend = 'TPN';
end
if GuidanceMethod(1) == 2
    MissileTrajColor = 'k';
    TrajLegend = 'PPN';
end
if GuidanceMethod(1) == 3
    MissileTrajColor = 'g';
    TrajLegend = 'APN';
end
if GuidanceMethod(1) == 4
    MissileTrajColor = 'c';
    TrajLegend = 'OGL';
end

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
% plot(Xt,Yt,'r-','LineWidth',2),grid
% hold on
plot(Xt,Yt,'r-',Xm,Ym, MissileTrajColor ,'LineWidth',2),grid
title('Guidance Trajectory')
xlabel('x')
ylabel('y')
hold on
legend('Target',TrajLegend);


%% Overload - Figure 2
figure(2)
plot(t,overload,MissileTrajColor,'LineWidth',2),grid
title('Overload')
xlabel('Time')
ylabel('Overload(g)')
hold on
