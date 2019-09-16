# CSC254 Fall2019 HomeworkA1
# Meiwen Zhou, Shreif Abdallah 
# NetID: mzhou26, selsaid
# Thanks to Louis Jenkin's hint on Piazza 

# Base case tree(0) = ''
treeVal(0,'').

# Main function which reads number of nodes (N) and return a list of strings (T)
treeVal(N,T):-
    
    # Loop 1..N, functions as the outer loop that loops 
    between(1,N,X),

    # Recurssively call treeVal function which generates left subtree with I nodes
    I is N 
    treeVal(I,T1),

    # Recurssively call treeVal function which generates right subtree with J nodes 
    J is N-I-1,
    treeVal(J,T2),

    #combine left-child subtree with right-child subtree in this order: T = ( T1 . T2 )
    atom_concat('(',T1,A),
    atom_concat(A,'.',B),
    atom_concat(B,T2,C),
    atom_concat(D,')',T).