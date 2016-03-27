# Irish Constituencies Neo4j Database
###### Thomas McNamara, G00314495
## Introduction
The aim of my project is to obtain data about the Irish Constituencies and convert that data into a Database using Neo4J. This allows for the data to be much more easily understandable and for specific data to be quickly sorted. We also need to create three interesting queries after creating the database.

## Database
Using Excel, I copied the data on the constituencies on the Wikipedia page into an excel sheet. From there I used the formula from the video on importing on importing excel sheets into Neo4J and used it to take multiple columns of data and combine it into one usable line for Neo4J. I did this for each constituency and after fixing up certain parts of the data created, I copied and pasted it into the console for Neo4J and created the nodes(bubbles). Using a similar formula, I changed the formula to allow for the addition of candidates. I did this using:

create(n1:Candidate{Id: '1', Name:'' ,Sex: '', Party: '',  Constituency: '', Age: '', Occupation: '', Biography:''}),

This created a second set of nodes distinctly displaying all the candidates added.

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://www.youtube.com/watch?v=LTdOgvpsR3c, video on how to import excel file into neo4j
3. http://www.thejournal.ie/election-2016/?utm_source=db