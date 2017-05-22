loadData;
addWeekDay;
addMonthNumber;
addIsHolidayFlags;
evaluatePreviousDayAverageLoad;
evaluateLoadFromTheSameHourThePreviousDay;
evaluateLoadFromSameHourSameDayPreviousWeek;
addHourOfDay;
evaluateMonthlyAverageLoad;
X=cell2mat(DATA(:,3:10));
networkTrain;

%%calculate MAPE
yPred = sim(net,X')';
R = Y-yPred;
mape = nanmean(abs(R./Y*100));

%%clearingUnusedVariables
clearvars counter dateAndTime DateTime flag hour hours i j m minutes tempAvg tempCount tempDate tempDay tempHour tempMonth tempSum;

%%print results
disp(sprintf('Input values : \n\tDay of the Week\n\tNumber of Month\n\tIsHoliday Flag\n\tPrevious Day Average Load\n\tLoad From The Same Hour Previous Day\n\tLoad From the Same Hour and Same Day from the previous Week\n\tHour of Day\n\tMonthly Average Load\nTarget values : System Load\nMAPE = %f' , mape));


