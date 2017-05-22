%%add isholiday field flags
holidays = {'02-Jan-2012','06-Apr-2012','09-Apr-2012','07-May-2012','04-Jun-2012','05-Jun-2012','27-Aug-2012','25-Dec-2012','26-Dec-2012','01-Jan-2013','29-Mar-2013','01-Apr-2013','06-May-2013','27-May-2013','26-Aug-2013','25-Dec-2013','26-Dec-2013','01-Jan-2014','18-Apr-2014','21-Apr-2014','05-May-2014','26-May-2014','25-Aug-2014','25-Dec-2014','26-Dec-2014'};
for i=1:34271
    if(DATA{i,3}==1 | DATA{i,3}==7 | ~isempty(find(strcmp(DATA{i,1}(1:11),holidays))))
        DATA{i,5} = 1;
    else
        DATA{i,5} = 0;
    end
end