- It is a directed weighted graph, also the nodes will be in different levels called stages, those nodes will not be interconnected but leads to the destination.


- recusrsive equation :

fun(Si, Vj) = Min (
                fun(Si+1, K) + C(Vj + K) where K belongs to Si+1 stage, Vj belongs to edge
                OR
                C(Vj, D) if SI = Sfi - 1
)

- fun(Si, Vj) -> refers to minimum cost to reach the destination from source Vj in Stage i.

- K resides in stage i + 1

- Vj is an edge 

