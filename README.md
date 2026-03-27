## 📈 Graph Analysis & Numerical Linear Algebra

This session focuses on the representation and analysis of graphs using **Numerical Linear Algebra**, highlighting how graph structures can be studied through matrix-based methods.

---

### 🔗 From Graphs to Matrices

A graph is first represented using its **adjacency matrix** \(A\), where:

- \(A_{ij} = 1\) if there is an edge between node \(i\) and node \(j\)  
- \(A_{ij} = 0\) otherwise  

This matrix representation allows us to move from a combinatorial object (a graph) to a linear algebra framework, enabling efficient computation and analysis.

**Interpretation:**
- Each **row/column** corresponds to a node  
- Each **entry** encodes the presence (or weight) of an edge  
- Matrix structure reflects connectivity patterns in the graph  

---

### 🔢 Degree of Nodes

The **degree** of each node is computed from the adjacency matrix:

\[
d_i = \sum_j A_{ij}
\]

In matrix terms, this corresponds to summing rows (or columns for undirected graphs).

**➡️ Linear Algebra Connection:**
- Degree vector can be computed efficiently using matrix-vector multiplication  
- Forms the diagonal of the **degree matrix** \(D\)  
- Serves as a building block for more advanced operators (e.g., Laplacian)  

---

### 🌐 Communicability

**Communicability** measures how easily information spreads between nodes, taking into account all possible paths (not just shortest paths).

It is often defined using the matrix exponential:

\[
G = e^{A}
\]

**➡️ Linear Algebra Connection:**
- Relies on matrix functions (e.g., exponential via eigen-decomposition or series expansion)  
- Captures global structure of the graph  
- Requires efficient numerical methods for large matrices  

---

### 🧮 Graph Laplacian

The **Laplacian matrix** is defined as:

\[
L = D - A
\]

where \(D\) is the degree matrix.

**➡️ Linear Algebra Connection:**
- Central object in spectral graph theory  
- Encodes both node degree and connectivity  
- Used in optimization, diffusion processes, and clustering  

---

### 🧭 Fiedler Vector

The **Fiedler vector** is the eigenvector corresponding to the second smallest eigenvalue of the Laplacian matrix.

**➡️ Linear Algebra Connection:**
- Requires solving an eigenvalue problem  
- Provides insight into graph connectivity  
- Used for **spectral clustering** and graph partitioning  

**Interpretation:**
- Nodes with similar values in the Fiedler vector tend to belong to the same cluster  
- Sign of components can be used to split the graph into communities  

---

### 🧠 Connection to AI

Graph-based methods are widely used in AI applications such as:

- Social network analysis  
- Recommendation systems  
- Semi-supervised learning  
- Clustering and dimensionality reduction  

Numerical Linear Algebra enables these methods by providing scalable tools for matrix computations, eigenvalue problems, and graph-based optimization.

---
