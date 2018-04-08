%Visualization
clf

i=1;
Size = size(t,1);
while i<Size
    plot(Xm(i),Ym(i),'r.',Xt(i),Yt(i),'b.'),grid
    i=i+50;
    hold on
    pause(0.0001)
end
title('Track')
xlabel('x')
ylabel('y')

% figure(1)
% plot(Xt,Yt,'r',Xm,Ym,'b'),grid
% title('Track')
% xlabel('x')
% ylabel('y')
% % axis([0,5000,0,5000]);