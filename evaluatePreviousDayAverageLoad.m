%%previous day's average load
flag = 1;
tempDate = DATA{1,1}(1:11);
tempSum = 0;
tempCount = 0;
tempAvg = 0;
for i=1:34271
    if tempDate==DATA{i,1}(1:11)
        tempSum=tempSum+DATA{i,2};
        tempCount=tempCount+1;
    else
        flag=0;
        tempAvg=tempSum./tempCount*1.0;
        tempSum=DATA{i,2};
        tempCount=1;
        tempDate=DATA{i,1}(1:11);
    end
    if flag==1
        DATA{i,6}=nan;
    else
        DATA{i,6}=tempAvg;
    end
end