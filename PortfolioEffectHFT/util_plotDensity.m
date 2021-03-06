% Line plot of probability density
%
% Plot probability density by produced by the portfolio_pdf( ) or position_pdf( ) functions.
% 
% 
% Usage
% 
% util_plotDensity(PDF, bw)
% 
%
% PDF
%        List of density values produced by portfolio or position pdf methods.
%
% bw
%        Black and white color scheme flag.
%
%
% Return Value
% 
% Void
%
% Note
%
% PortfolioEffect - Matlab Interface to Quant API
% 
% Copyright (C) 2010 - 2015 Snowfall Systems, Inc.
%
%
% Examples
% 
% dateStart = '2014-11-17 09:30:00';
% dateEnd = '2014-11-19 16:00:00';
% portfolioExample=portfolio_create('index','SPY','fromTime',dateStart ,'toTime',dateEnd );
% portfolio_addPosition(portfolioExample,'AAPL',100);
% portfolio_addPosition(portfolioExample,'C',300); 
% portfolio_addPosition(portfolioExample,'GOOG',150);
% util_plotDensity(position_pdf(portfolioExample,'AAPL',0,1,100,true))

function util_plotDensity(PDF)
	if ~isempty(PDF.pdfNormal)
     plot(PDF.value,PDF.pdf,PDF.valueNormal,PDF.pdfNormal,'LineWidth',1.5);   
    else
plot(PDF.value,PDF.pdf,'Color',[0 74/255 97/255],'LineWidth',1.5);
    end
set(gca,'Color',[213/255 228/255 235/255]);
set(gcf,'Color',[213/255 228/255 235/255]);
xlabel('');
ylabel('pdf');
grid on
end

