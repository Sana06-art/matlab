% Filename: stockexch_from_excel.m

% Load the dataset from the Excel file
% Assuming the Excel file 'uk_population.xlsx' contains two columns:
% Column A: Company name
% Column C: priece

filename = 'stockexch.xlsx';
sheet = 1;  % You can specify the sheet number or name if there are multiple sheets

% Read the data from the Excel file
data = readtable(filename, 'Sheet', sheet);

% Extract data into separate variables
company = data{:,1}; % Company names
priece = data{:,2}; % Population numbers

disp('all entries:');
disp(table(company(1:5550), priece(1:5550)));