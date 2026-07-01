function choice = validateChoice(minChoice, maxChoice)

while true

    choice = str2double(input('Enter your choice: ','s'));

    if ~isnan(choice) && ...
            mod(choice,1)==0 && ...
            choice >= minChoice && ...
            choice <= maxChoice

        return;

    else
        fprintf('\nInvalid choice. Please enter a number between %d and %d.\n\n', ...
            minChoice, maxChoice);
    end

end

end