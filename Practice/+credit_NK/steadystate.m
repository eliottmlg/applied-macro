function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    ys_(7)=params(33);
    ys_(19)=params(32);
    ys_(20)=(ys_(19)*params(28)*ys_(7)^(1-params(31))/(params(30)*params(29)))^(1/(params(30)-1));
    ys_(21)=ys_(7)^(1-params(31))*params(28)*(1-ys_(20));
    ys_(22)=ys_(7)*params(8);
    ys_(14)=params(19);
    ys_(1)=1/params(2);
    ys_(15)=ys_(14)*ys_(1);
    ys_(13)=(params(13)-1)/params(13);
    ys_(18)=ys_(13)-params(29)*ys_(20)^params(30)-(1-ys_(20))*params(28)*ys_(19)*(1-params(31))*ys_(7)^(-params(31));
    ys_(5)=0.3333333333333333;
    ys_(17)=1;
    ys_(12)=1-params(1)/params(2);
    ys_(8)=ys_(7)*ys_(18)*params(4)/((ys_(1)-ys_(12)*params(11))/(1-ys_(12))-(1-params(3)));
    params(9)=ys_(7)/(ys_(8)^params(4)*ys_(5)^(1-params(4)));
    ys_(9)=params(3)*ys_(8);
    ys_(6)=ys_(7)*ys_(18)*(1-params(4))/ys_(5)/(1+ys_(12)*params(10));
    ys_(10)=params(11)*ys_(8)/ys_(1)-ys_(5)*params(10)*ys_(6);
    ys_(3)=(-ys_(9))-ys_(5)*ys_(6)-ys_(7)*params(29)*ys_(20)^params(30)-ys_(19)*ys_(21)+ys_(7)*ys_(13)+ys_(7)*(1-ys_(13))+ys_(10)*(1-ys_(1));
    ys_(2)=ys_(7)*(1-params(8))-ys_(9)-ys_(7)*params(29)*ys_(20)^params(30);
    ys_(4)=ys_(2)-ys_(3);
    ys_(11)=(ys_(3)-ys_(3)*params(12))^(-params(5));
    ys_(16)=(ys_(4)-ys_(4)*params(12))^(-params(5));
    params(7)=ys_(6)*ys_(16)/ys_(5)^params(6);
    ys_(22)=ys_(7)*params(8);
    ys_(29)=1;
    ys_(30)=1;
    ys_(31)=1;
    ys_(32)=1;
    ys_(33)=1;
    ys_(34)=1;
    ys_(35)=1;
    ys_(36)=1;
    ys_(23)=0;
    ys_(24)=0;
    ys_(25)=0;
    ys_(26)=0;
    ys_(27)=0;
    ys_(28)=0;
    % Auxiliary equations
end
