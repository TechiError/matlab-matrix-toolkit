function choice = displayMenu()

    clc;
    fprintf('\n')
    fprintf('=========================================\n')
    fprintf('            MATRIX TOOLKIT\n')
    fprintf('=========================================\n')
    fprintf('1. Matrix Addition\n')
    fprintf('2. Matrix Subtraction\n')
    fprintf('3. Matrix Multiplication\n')
    fprintf('4. Scalar Multiplication\n')
    fprintf('5. Transpose\n')
    fprintf('6. Inverse\n')
    fprintf('7. Rank\n')
    fprintf('8. Trace\n')
    fprintf('9. Exit\n')

    choice = validateChoice(1,9);
end