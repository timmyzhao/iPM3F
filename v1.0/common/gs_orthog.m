function [q] = gs_orthog(p)
% Gram-Schmidt Orthogonalization
[k,n] = size(p);
q = p;
for j = 2:n
    q(:,j) = p(:,j) - q(:,1:j-1)*((q(:,1:j-1)'*p(:,j))./sum(q(:,1:j-1).^2)');
end
nq = sqrt(sum(q.^2));
q = q ./ nq(ones(1,k), :);

end