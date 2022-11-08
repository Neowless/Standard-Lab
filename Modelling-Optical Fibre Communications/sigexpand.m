function[out]=sigexpand(d,M); %sigexpand：函数名称
N_x= length(d); 
out = zeros(M,N_x); 
out(1,:) = d;     
out = reshape(out,1,M*N_x); %将out矩阵变成1行，M*N列