function [sequence] = dec2binarr(dec,bitnumber)
dec = round(abs(dec));
sequence = zeros(1,bitnumber);
    for i=1:bitnumber
        temp_2 = bitnumber-i;
        if (dec >= 2^temp_2)
            sequence(i) = 1;
        else
            sequence(i) = 0;
        end
        dec = mod(dec,2^temp_2);
    end
end