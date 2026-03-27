load('usroads.mat');
A=Problem.A;

%The graph is undirected as the adjacancy matrix is symmetric
n=size(A,1);
% Degree=zeros(n,1);
% for i=1:n
%     for j=1:n
%         Degree(i,1)=Degree(i,1)+A(i,j);
%     end
% end

Degree = sum(A, 2);%the degree of each node
maxDegree = max(Degree);%the largest degree in the graph
i_max = find(Degree == maxDegree);%the node that has maximum degree

%Interpretation: A node is important if it's connected to other important nodes.
%Example: In a social network, someone who is friends with several highly popular people might be considered more influential than someone with more but less influential friends.

[V, D] = eigs(A, 1);  % compute only the largest eigenvalue/eigenvector
eigenvector_centrality = V(:,1); 
[max_centrality, node_idx] = max(eigenvector_centrality);%%The most influential node



%%Communicability
v = ones(n,1);        % vector of ones

% Use expmv to compute exp(A)*v efficiently
comm = expmv(A, v);%the communicabality of the node i
maxcomm = max(comm);%the largest communicability value
i_maxcomm = find(comm == maxcomm);%the node that has the most communicabality




%Graph laplacian 
D=diag(Degree);
LG=D-A; %Grapg Laplacian of G

% eigs options
opts.isreal = 1;
opts.issym  = 1;
k = 3;
sigma = 1e-14;  % small positive shift to avoid singularity

% Compute eigenvalues near sigma
[V, D_L] = eigs(LG, k, sigma, opts);

% Sort eigenvalues %order them in ascending order
[eigvals_sorted, idx] = sort(diag(D_L));

% Fiedler value/vector
fiedler_value  = eigvals_sorted(2);
fiedler_vector = V(:, idx(2));

% Fiedler value/vector
fiedler_value3  = eigvals_sorted(3);
fiedler_vector3 = V(:, idx(3));



%graph plot
coordinate=Problem.aux.coord;
A=graph(A);
plot(A,'XData', coordinate(:,1),'YData',coordinate(:,2))



