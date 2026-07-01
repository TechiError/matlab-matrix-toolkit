function main
%MAIN Matrix Toolkit interactive console application.
%
%   Provides a menu-driven interface for fundamental matrix operations:
%   addition, subtraction, multiplication, scalar multiplication,
%   transpose, and inverse. Each operation shows input and result
%   matrices formatted side-by-side.

    clc;
    clear;
    close all;

    addpath("functions");

    while true
        
        choice = displayMenu();
        switch choice
            case 1
                clc;
                fprintf("Addition:\n\n");
                fprintf("Matrix 1:\n")
                m1 = inputMatrix();
                fprintf("Matrix 2:\n\n");
                m2 = inputMatrix();
                clc;
                result = m1 + m2;
                printOperation(m1,"+",m2,result);
                input("Press enter to go back to main menu.\n");
    
            case 2
                clc;
                fprintf("Substraction:\n\n");
                fprintf("Matrix 1:\n")
                m1 = inputMatrix();
                fprintf("Matrix 2:\n\n");
                m2 = inputMatrix();
                clc;
                result = m1 - m2;
                printOperation(m1,"-",m2,result);
                input("Press enter to go back to main menu.\n");
    
            case 3
                clc;
                fprintf("Multiplication:\n\n");
                fprintf("Matrix 1:\n")
                m1 = inputMatrix();
                fprintf("Matrix 2:\n\n");
                m2 = inputMatrix();
                clc;
                result = m1 * m2;
                printOperation(m1,"*",m2,result);
                input("Press enter to go back to main menu.\n");
    
            case 4
                clc;
                fprintf("Scalar Multiplication:\n\n");
                fprintf("Scalar Value:\n")
                s = str2double(input("Enter your choice: ", "s"));
                fprintf("Matrix:\n\n");
                m2 = inputMatrix();
                clc;
                result = s * m2;
                printOperation(s,"*",m2,result);
                input("Press enter to go back to main menu.\n");
    
            case 5
                clc;
                fprintf("Matrix Transpose:\n\n");
                fprintf("Matrix:\n\n");
                m2 = inputMatrix();
                clc;
                printOperation(m2,"`",transpose(m2));
                input("Press enter to go back to main menu.\n");
    
            case 6
                clc;
                fprintf("Inverse of Matrix:\n\n");
                fprintf("Matrix:\n\n");
                m2 = inputMatrix(true);
                clc;
                printOperation(m2,"i",inv(m2));
                input("Press enter to go back to main menu.\n");
    
            case 7
                clc;
                fprintf("Rank of Matrix:\n\n");
                fprintf("Matrix:\n\n");
                m2 = inputMatrix();
                clc;
                printOperation(m2,"i",rank(m2));
                input("Press enter to go back to main menu.\n");
    
            case 8
                clc;
                fprintf("Trace of Matrix:\n\n");
                fprintf("Matrix:\n\n");
                m2 = inputMatrix(true);
                clc;
                printOperation(m2,"tr",trace(m2));
                input("Press enter to go back to main menu.\n");
    
            case 9
                disp('');
                break;
    
            otherwise
                fprintf("\nInvalid choice\n");
    
        end
    end
end