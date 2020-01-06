**Project 3 - Tapestry Algorithm**

### Group Members

##### Rahul Bhatia 

The Main driver file is MainServer

Program Flow:

The program takes two parameters as command line arguments - numnodes and numrequests. Numnodes determines the network of maximum nodes and numrequests tells us the number of requests which will be made by all the nodes to pass a message to other random nodes. The program exits when all the peers performed the given number of requests. 
Firstly, routing tables are created for all the nodes and then  message passing is initiated. Simultaneously, a new node is added to the network. Routing table for this new node is calculated as follows - pick the node with maximum matching prefixes and copy the routing table of that node till that level for the new node. Calculate for other levels as was done when creating routing tables. Also, update the routing tables of corresponding nodes which can accomodate this new node.
Each sends a message to a random node every 10ms to emulate a realistic scenario.
Finally, max no of hops is calculated from among all the requests made by all the nodes.

### Input Format:

Building and Execution instructions

Naviagate into the folder Tapestry
cd Tapestry

Run the exs file
time mix run project3.exs arg1 arg2

On windows use
mix run project3.exs arg1 arg2

The arguments can be of the form:

| Argument            | Description               | Options                                               |
|---------------------|---------------------------|-------------------------------------------------------|
| arg1                | Number of Nodes           | any positive integer                                  |
| arg2                | Number of requests        | any positive integer                                  |


#### What is working?

All the routing tables are calculated correctly. Dynamic node addition is also working as expected

#### What is the largest network you managed to deal ?
All tests were performed on an 8 Core 16GB system. The program can be scaled endlessly,
but our tests are limited by the RAM size.

Largest network tested was 5000 ndoes with 20 requests each 
Max hops achieved was in the range of 4-6



