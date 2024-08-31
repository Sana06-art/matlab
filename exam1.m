% Filename: store_population_data_from_excel.m

% Load the dataset from the Excel file
% Assuming the Excel file 'worlpopexam.xlsx' contains two columns:
% Column A: Country/Region name
% Column C: Population

filename = 'worlpopexam.xlsx';
sheet = 1;  % You can specify the sheet number or name if there are multiple sheets

% Read the data from the Excel file
data = readtable(filename, 'Sheet', sheet);

% Extract data into separate variables
countries = data{:,1}; % Country/Region names
populations = data{:,2}; % Population numbers

disp('all entries:');
disp(table(countries(1:100), populations(1:100)));