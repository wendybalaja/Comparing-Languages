    **** CSC254 FALL2019 A1
    **** Meiwen ZHou (NetID: mzhou26)
    **** Partner: Shreif Abdallah (NetID: selsaid)


----------Running Instructions:

    c++ :

        compile : g++ -std=c++11 assign0.cpp -o assign0
        run : ./assign0
        please note that since the program uses some features exclusive to c++11 it has to be compiled using the above flags

    python :
        to run : python3 ./a1.py
        please note that since the program uses some features exclusive to python3 it has to be compiled with python3


    ada :
        compile : gnatmake main.adb
        to run : ./main

    go :
        compile : go build a1.go
        to run : ./a1

    Java :
        compile : javac TreeEnum.java

    Haskell :
        compile : ghc -o A1 A1.hs
        to run : ./A1

    Prolog :
        to interpret : swipl A1.pl
        to run type the following expression, replacing n with the number of nodes : treeVal(n,T).

----------Developing process:

(Following 5 languages are done by my partner. Because they are not coded by me, we simply exchanged information on the developing process)

        1)python: This is the first programming language we conquered because we are familiar with Python. We initiate an empty list to hold the result (which will be a list of strings), and using an outer for loop which generate all posibilities of possible distribution of nodes on right/left side of the root node, then using a nested for loop inside which internally combines the possible

        2)go: Similar to Python code, with couple changes on grammar.

        3)ada: We are warned about how dangerous Ada is beforehand. Because everything is included in the main function, which means no functions can be defined outside the scope of main. We have to define all the functions within the main function. Also, we have to strictly define the type of our variables. Luckily, the loops and nested loops work same as Python.
[[Extra credits]]
        4)c++: Very similar to Python code, with couple changes on grammar.

        5)Java: Very similar to Python code, with couple changes on grammar.

(Following 2 languages are done by me)
        6)Haskell: What makes it hard to start on Haskell is that it is a functional programming language where all data is immutable. This makes it extremely difficult simulate "for loop" because we don't have an "i" that increments every round. Instead, we have recurssive functions that calls itself within the function, which takes i+1 value as one of the arguments and pass along. According to the python algorithm, which is the foundation, we break down the algorithm to 3 recurssion functions:
[1] combine: helping function that functions as nested for loops (i,j) and returns a string list(result) of all the possible combinations of 2 string lists (list1, list2).
[2] enumerator: helping function that functions as a for loop which loops through all possible distributions of the left-child subtree tree(i) and right-child subtree tree(n-i-1), and returns a list of strings of all possible binary trees that can be built from n nodes.
[3] tree: main function which takes one Int (n) and returns a list of possible n-node trees.

        7)Prolog:Thinking in Prolog is painful because, different than any other languages but similar to what we learned about knwoledge base in CSC242, we are only defining clauses in our programs. So, we simply define how the "tree" is constructed logically without giving it any "computing" instructions. Referring to the algorithm in Python, we constructed this program which is short and precise.

*Please see detailed comments in each file*

----------Limitations/Positive aspects:

Limitations:
1)No type check for users' input. No checking on integer values (means no handling on negative values)
2)Can't handle large number

Positive aspects:
1)Work perfectly on reasonable numbers. Print out nicely.
2)We successfully use recurssion and loops(if no loop function, we created them) in imperative/functional programming languages.