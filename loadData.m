%%read the data
%cd 'C:\Users\Dell\Desktop\Fakultet\MIIU\PROEKT';
DateTime = xlsread('Podatoci_edno_dom.xlsx','C2:C34272');
Y = xlsread('Podatoci_edno_dom.xlsx','D2:D34272');
dateAndTime = cellstr(datestr(DateTime + datenum(1900,1,1,0,0,0)-2));
DATA = [dateAndTime num2cell(Y)];