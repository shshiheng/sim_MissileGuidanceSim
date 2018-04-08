%Visualization
i=1;
Size = size(tout,1);
while i<Size
    plot(Xm(i)),grid;
%     plot(Xm(i),Ym(i),'r',Xt(i),Yt(i),'b'),grid;
    i=i+1;
    hold on
    pause(0.5)
end
title('Track')
xlabel('x')
ylabel('y')

% figure(1)
% plot(Xt,Yt,'r',Xm,Ym,'b'),grid
% title('Track')
% xlabel('x')
% ylabel('y')
% axis([0,5000,0,5000]);