function [lb,ub,dim,fobj] = GetFunctionsdetails(F,D)
    switch F
        case 'BF1'
            fobj = @BF1;
            lb=-100;
            ub=100;
            dim=D;
            
        case 'BF2'
            fobj = @BF2;
            lb=-10;
            ub=10;
            dim=D;
            
        case 'BF3'
            fobj = @BF3;
            lb=-100;
            ub=100;
            dim=D;
            
        case 'BF4'
            fobj = @BF4;
            lb=-100;
            ub=100;
            dim=D;
            
        case 'BF5'
            fobj = @BF5;
            lb=-30;
            ub=30;
            dim=D;
            
        case 'BF6'
            fobj = @BF6;
            lb=-100;
            ub=100;
            dim=D;
            
        case 'BF7'
            fobj = @BF7;
            lb=-1.28;
            ub=1.28;
            dim=D;
            
        case 'BF8'
            fobj = @BF8;
            lb=-500;
            ub=500;
            dim=D;
            
        case 'BF9'
            fobj = @BF9;
            lb=-5.12;
            ub=5.12;
            dim=D;
            
        case 'BF10'
            fobj = @BF10;
            lb=-32;
            ub=32;
            dim=D;
        case 'BF11'
            fobj = @BF11;
            lb=-600;
            ub=600;
            dim=D;
            
        case 'BF12'
            fobj = @BF12;
            lb=-50;
            ub=50;
            dim=D;
            
        case 'BF13'
            fobj = @BF13;
            lb=-50;
            ub=50;
            dim=D;

        case 'BF14'
            fobj = @BF14;
            lb=-65.536;
            ub=65.536;
            dim=2;
            
        case 'BF15'
            fobj = @BF15;
            lb=-5;
            ub=5;
            dim=4;
            
        case 'BF16'
            fobj = @BF16;
            lb=-5;
            ub=5;
            dim=2;
            
        case 'BF17'
            fobj = @BF17;
            lb=[-5,0];
            ub=[10,15];
            dim=2;
            
        case 'BF18'
            fobj = @BF18;
            lb=-5;
            ub=5;
            dim=2;
            
        case 'BF19'
            fobj = @BF19;
            lb=0;
            ub=1;
            dim=3;
            
        case 'BF20'
            fobj = @BF20;
            lb=0;
            ub=1;
            dim=6;     
            
        case 'BF21'
            fobj = @BF21;
            lb=0;
            ub=10;
            dim=4;    

        case 'BF22'
            fobj = @BF22;
            lb=0;
            ub=10;
            dim=4;    
            
        case 'BF23'
            fobj = @BF23;
            lb=0;
            ub=10;
            dim=4;
        %CEC2017 - 1 
        case 'CF1'
            fobj = @F1;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 2
        case 'CF2'
            fobj = @F2;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 3
        case 'CF3'
            fobj = @F3;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 4
        case 'CF4'
            fobj = @F4;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 5
        case 'CF5'
            fobj = @F5;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 6
        case 'CF6'
            fobj = @F6;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 7
        case 'CF7'
            fobj = @F7;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 8
        case 'CF8'
            fobj = @F8;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 9
        case 'CF9'
            fobj = @F9;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 10
        case 'CF10'
            fobj = @F10;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 11
        case 'CF11'
            fobj = @F11;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 12
        case 'CF12'
            fobj = @F12;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 13
        case 'CF13'
            fobj = @F13;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 14
        case 'CF14'
            fobj = @F14;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 15
        case 'CF15'
            fobj = @F15;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 16
        case 'CF16'
            fobj = @F16;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 17
        case 'CF17'
            fobj = @F17;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 18
        case 'CF18'
            fobj = @F18;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 19
        case 'CF19'
            fobj = @F19;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 20
        case 'CF20'
            fobj = @F20;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 21
        case 'CF21'
            fobj = @F21;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 22
        case 'CF22'
            fobj = @F22;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 23
        case 'CF23'
            fobj = @F23;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 24
        case 'CF24'
            fobj = @F24;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 25
        case 'CF25'
            fobj = @F25;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 26
        case 'CF26'
            fobj = @F26;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 27
        case 'CF27'
            fobj = @F27;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 28
        case 'CF28'
            fobj = @F28;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 29
        case 'CF29'
            fobj = @F29;
            lb=-100;
            ub=100;
            dim=D;
            
        %CEC2017 - 30
        case 'CF30'
            fobj = @F30;
            lb=-100;
            ub=100;
            dim=D;          
    end
end
% F1
function o = BF1(x)
o=sum(x.^2);
end
% F2
function o = BF2(x)
o=sum(abs(x))+prod(abs(x));
end
% F3
function o = BF3(x)
dim=size(x,2);
o=0;
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end
% F4
function o = BF4(x)
o=max(abs(x));
end
% F5
function o = BF5(x)
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end
% F6
function o = BF6(x)
o=sum(abs((x+.5)).^2);
end
% F7
function o = BF7(x)
dim=size(x,2);
o=sum([1:dim].*(x.^4))+rand;
end
% F8
function o = BF8(x)
o=sum(-x.*sin(sqrt(abs(x))));
end
% F9
function o = BF9(x)
dim=size(x,2);
o=sum(x.^2-10*cos(2*pi.*x))+10*dim;
end
% F10
function o = BF10(x)
dim=size(x,2);
o=-20*exp(-.2*sqrt(sum(x.^2)/dim))-exp(sum(cos(2*pi.*x))/dim)+20+exp(1);
end
% F11
function o = BF11(x)
dim=size(x,2);
o=sum(x.^2)/4000-prod(cos(x./sqrt([1:dim])))+1;
end
% F12
function o = BF12(x)
dim=size(x,2);
o=(pi/dim)*(10*((sin(pi*(1+(x(1)+1)/4)))^2)+sum((((x(1:dim-1)+1)./4).^2).*...
(1+10.*((sin(pi.*(1+(x(2:dim)+1)./4)))).^2))+((x(dim)+1)/4)^2)+sum(Ufun(x,10,100,4));
end
% F13
function o = BF13(x)
dim=size(x,2);
o=.1*((sin(3*pi*x(1)))^2+sum((x(1:dim-1)-1).^2.*(1+(sin(3.*pi.*x(2:dim))).^2))+...
((x(dim)-1)^2)*(1+(sin(2*pi*x(dim)))^2))+sum(Ufun(x,5,100,4));
end
% F14
function o = BF14(x)
aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;...
-32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];
for j=1:25
    bS(j)=sum((x'-aS(:,j)).^6);
end
o=(1/500+sum(1./([1:25]+bS))).^(-1);
end
% F15
function o = BF15(x)
aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
o=sum((aK-((x(1).*(bK.^2+x(2).*bK))./(bK.^2+x(3).*bK+x(4)))).^2);
end
% F16
function o = BF16(x)
o=4*(x(1)^2)-2.1*(x(1)^4)+(x(1)^6)/3+x(1)*x(2)-4*(x(2)^2)+4*(x(2)^4);
end
% F17
function o = BF17(x)
o=(x(2)-(x(1)^2)*5.1/(4*(pi^2))+5/pi*x(1)-6)^2+10*(1-1/(8*pi))*cos(x(1))+10;
end
% F18
function o = BF18(x)
o=(1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*(x(1)^2)-14*x(2)+6*x(1)*x(2)+3*x(2)^2))*...
    (30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*(x(1)^2)+48*x(2)-36*x(1)*x(2)+27*(x(2)^2)));
end
% F19
function o = BF19(x)
aH=[3 10 30;.1 10 35;3 10 30;.1 10 35];cH=[1 1.2 3 3.2];
pH=[.3689 .117 .2673;.4699 .4387 .747;.1091 .8732 .5547;.03815 .5743 .8828];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end
% F20
function o = BF20(x)
aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
cH=[1 1.2 3 3.2];
pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
.2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end
% F21
function o = BF21(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];
o=0;
for i=1:5
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end
% F22
function o = BF22(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];
o=0;
for i=1:7
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end
% F23
function o = BF23(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];
o=0;
for i=1:10
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end
function o=Ufun(x,a,k,m)
o=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end


% F1
function o = F1(x) 
    o = cec17_func(x',1);
end

% F2
function o = F2(x) 
    o = cec17_func(x',2);
end

% F3
function o = F3(x) 
    o = cec17_func(x',3);
end

% F4
function o = F4(x) 
    o = cec17_func(x',4);
end

% F5
function o = F5(x) 
    o = cec17_func(x',5);
end

% F6
function o = F6(x) 
    o = cec17_func(x',6);
end

% F7
function o = F7(x) 
    o = cec17_func(x',7);
end

% F8
function o = F8(x) 
    o = cec17_func(x',8);
end

% F9
function o = F9(x) 
    o = cec17_func(x',9);
end

% F10
function o = F10(x) 
    o = cec17_func(x',10);
end


% F11
function o = F11(x) 
    o = cec17_func(x',11);
end

% F12
function o = F12(x) 
    o = cec17_func(x',12);
end


% F13
function o = F13(x) 
    o = cec17_func(x',13);
end

% F14
function o = F14(x) 
    o = cec17_func(x',14);
end

% F15
function o = F15(x) 
    o = cec17_func(x',15);
end

% F16
function o = F16(x) 
    o = cec17_func(x',16);
end


% F17
function o = F17(x) 
    o = cec17_func(x',17);
end

% F18
function o = F18(x) 
    o = cec17_func(x',18);
end

% F19
function o = F19(x) 
    o = cec17_func(x',19);
end

% F20
function o = F20(x) 
    o = cec17_func(x',20);
end

% F21
function o = F21(x) 
    o = cec17_func(x',21);
end

% F22
function o = F22(x) 
    o = cec17_func(x',22);
end

% F23
function o = F23(x) 
    o = cec17_func(x',23);
end

% F24
function o = F24(x) 
    o = cec17_func(x',24);
end


% F25
function o = F25(x) 
    o = cec17_func(x',25);
end

% F26
function o = F26(x) 
    o = cec17_func(x',26);
end

% F27
function o = F27(x) 
    o = cec17_func(x',27);
end

% F28
function o = F28(x) 
    o = cec17_func(x',28);
end

% F29
function o = F29(x) 
    o = cec17_func(x',29);
end

% F30
function o = F30(x) 
    o = cec17_func(x',30);
end



