% Filename: store_length_data_from_excel.m

% Load the dataset from the Excel file
% Excel file 'uk_population.xlsx' contains two columns:
% Column A: building
% Column B: length(m)
% Column c: length(ft)
filename = '3 TALLEST.xlsx';
sheet = 1;  % You can specify the sheet number or name if there are multiple sheets

% Read the data from the Excel file
data = readtable(filename, 'Sheet', sheet);

% Extract data into separate variables
Building = data{:,1}; % building
length = data{:,2}; % length in meter
length_2= data{:,3}; %length in feet
disp('all entries:');
disp(table(Building(1:58), length(1:58), length_2(1:58)));