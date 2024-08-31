w = 1:102;  
y = 2.^w;  % Calculate 2^w for each value in w
% Define the noise amplitude (adjust this value to control the level of noise)
noise_amplitude = 0.5;  

% Generate random noise (normally distributed, centered around 0)
noise = (rand(size(w)) - 0.5) * 2 * noise_amplitude;  

% Add noise to the exponential data
y_noisy = y .*(1+ noise/100);

% Step 4: Display the data
% Create a table to show w, 2^w, noise, and y_noisy
data_table = table(w', y', noise', y_noisy', 'VariableNames', {'w', '2^w', 'Noise', 'y_noisy'})

