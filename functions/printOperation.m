function printOperation(A, op, varargin)
% printOperation Prints matrices side by side with an operator.
%
% Binary:
%   printOperation(A,'+',B,A+B)
%
% Unary:
%   printOperation(A,"'",A.')
%   printOperation(A,"inv",inv(A))

if nargin == 3
    % Unary operation
    B = [];
    C = varargin{1};

elseif nargin == 4
    % Binary operation
    B = varargin{1};
    C = varargin{2};

else
    error('Invalid number of inputs.');
end

left = matrixBlock(A);

if ~isempty(B)
    right = matrixBlock(B);
else
    right = {};
end

result = matrixBlock(C);

h = max([numel(left), numel(right), numel(result)]);

left = padBlock(left,h);

if ~isempty(B)
    right = padBlock(right,h);
else
    right = repmat({''},h,1);
end

result = padBlock(result,h);

w1 = max(cellfun(@length,left));

if ~isempty(B)
    w2 = max(cellfun(@length,right));
else
    w2 = 0;
end

mid = ceil(h/2);

for i = 1:h

    fprintf('%-*s',w1,left{i});

    if i == mid
        fprintf('  %s  ',op);
    else
        fprintf('     ');
    end

    if ~isempty(B)
        fprintf('%-*s',w2,right{i});
    end

    if i == mid
        fprintf('  =  ');
    else
        fprintf('     ');
    end

    fprintf('%s\n',result{i});

end

end


function block = matrixBlock(M)

[r,c] = size(M);

width = 0;

for i = 1:r
    for j = 1:c
        width = max(width,length(sprintf('%g',M(i,j))));
    end
end

block = cell(r,1);

for i = 1:r

    line = '';

    for j = 1:c
        line = [line sprintf(['%',num2str(width+2),'g'],M(i,j))]; %#ok<AGROW>
    end

    block{i} = line;

end

end


function out = padBlock(block,height)

if isempty(block)
    out = repmat({''},height,1);
    return
end

top = floor((height-numel(block))/2);
bottom = height-numel(block)-top;

w = max(cellfun(@length,block));

blank = repmat(' ',1,w);

out = [repmat({blank},top,1);
    block;
    repmat({blank},bottom,1)];

end