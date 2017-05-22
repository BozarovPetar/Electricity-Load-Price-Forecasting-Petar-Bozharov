%%average load in each month
m = cell(23,2);
tempMonth = DATA{744,1}(4:11);
tempSum = 0;
counter = 1;
tempCount = 0;
for i=744:34217
    if (isequal(tempMonth,DATA{i,1}(4:11)))
        if(~isnan(DATA{i,2}))
            tempSum=tempSum+DATA{i,2};
            tempCount=tempCount+1;
        end
    else
        m{counter,1}=tempMonth;
        m{counter,2}=tempSum./tempCount;
        tempSum=DATA{i,2};
        tempMonth=DATA{i,1}(4:11);
        counter=counter+1;
        tempCount=1;
    end
end
m{counter,1}=tempMonth;
m{counter,2}=tempSum./tempCount;
tempCount=1;
for i=1:34271
    if i<744
        DATA{i,10} = nan;
    else
        if (isequal(DATA{i,1}(4:11),m{tempCount,1}))
            DATA{i,10} = m{tempCount,2};
        else
            tempCount = tempCount+1;
            DATA{i,10} = m{tempCount,2};
        end
    end
end