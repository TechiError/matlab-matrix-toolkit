function M = inputMatrix(sqr)
%INPUTMATRIX Prompts the user to enter a matrix interactively.
%
%   M = inputMatrix() prompts for row/column counts, validates them,
%   then reads each row as a space-separated list of numbers.
arguments
    sqr (1,1) logical = false
end
    while true
        if sqr
            rows = str2double(input("Enter no. of rows or colums: ", "s"));
            cols = rows;
        else
        
            rows = str2double(input("Enter no. of rows: ", "s"));
            cols = str2double(input("Enter no. of columns: ", "s"));
        end
        if ~isnan(rows) && ~isnan(cols) && ...
                rows > 0 && cols > 0 && ...
                mod(rows,1)==0 && mod(cols,1)==0
            break
        else
            disp("Enter numeric values for rows and columns.")
        end
        fprintf('\nEnter the matrix row by row.\n');
    end

    M = zeros(rows, cols);
    
    for i = 1:rows
        while true
            row = input(sprintf('Row %d: ', i), 's');
            values = str2num(row); %#ok<ST2NM>
    
            if ~isempty(values) && length(values) == cols
                M(i,:) = values;
                break;
            else
                fprintf('Enter exactly %d numbers.\n', cols);
            end
        end
    end
end