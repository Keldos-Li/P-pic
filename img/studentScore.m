score = input('输入三门成绩，用[]括起来\n');
A=zeros(1,3);
B=zeros(1,3);
C=zeros(1,3);
D=zeros(1,3);
E=zeros(1,3);

for i = 1:3
    if score(i) < 55
        A(i) = 0;
        B(i) = 0;
        C(i) = 0;
        D(i) = 0;
        E(i) = 1;
    elseif score(i) < 65
        A(i) = 0;
        B(i) = 0;
        C(i) = 0;
        D(i) = (score(i)-55)/10;
        E(i) = (65-score(i))/10;
    elseif score(i) <75
        A(i) = 0;
        B(i) = 0;
        C(i) = (score(i)-65)/10;
        D(i) = (75-score(i))/10;
        E(i) = 0;
    elseif score(i) <85
        A(i) = 0;
        B(i) = (score(i)-75)/10;
        C(i) = (85-score(i))/10;
        D(i) = 0;
        E(i) = 0;     
    elseif score(i) <95
        A(i) = (score(i)-85)/10;
        B(i) = (95-score(i))/10;
        C(i) = 0;
        D(i) = 0;
        E(i) = 0;
    else
        A(i) = 1;
        B(i) = 0;
        C(i) = 0;
        D(i) = 0;
        E(i) = 0;
    end
end

You = 0;
Liang = 0;
Zhong = 0;
Jige = 0;
Bujige= 0;
for i = 1:3
    You = You + A(i);
    Liang = Liang + B(i);
    Zhong = Zhong + C(i);
    Jige = Jige + D(i);
    Bujige = Bujige + E(i);
end
You = You/3;
Liang = Liang/3;
Zhong = Zhong/3;
Jige = Jige/3;
Bujige = Bujige/3;

disp(['优的隶属度为',num2str(You)])
disp(['良的隶属度为',num2str(Liang)])
disp(['中的隶属度为',num2str(Zhong)])
disp(['及格的隶属度为',num2str(Jige)])
disp(['不及格的隶属度为',num2str(Bujige)])
