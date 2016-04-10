# Irish Constituencies Neo4j Database
###### Thomas McNamara, G00314495
## Introduction
The aim of my project is to obtain data about the Irish Constituencies and convert that data into a Database using Neo4J. This allows for the data to be much more easily understandable and for specific data to be quickly sorted. We also need to create three interesting queries after creating the database.

## Database
Using Excel, I copied the data on the constituencies on the Wikipedia page into an excel sheet. From there I used the formula from the video on importing excel sheets into Neo4J and used it to take multiple columns of data and combine it into one usable line for Neo4J. I did this for each constituency and after fixing up certain parts of the data created, I copied and pasted it into the console for Neo4J and created the nodes(bubbles). Using a similar formula, I changed the formula to allow for the addition of candidates. I did this using:

create(n1:Candidate{Id: '1', Name:'' ,Sex: '', Party: '',  Constituency: '', Age: '', Occupation: '', Biography:''}),

This created a second set of nodes distinctly displaying all the candidates added.

Then using:
MATCH (a:Candidate),(b:Constituency)
WHERE a.Name = '' AND b.Id = ''
CREATE (a)-[r:ASSOCIATION]->(b)
RETURN r,
I was able to create relationships between all of the candidates with all the constituencies.

After everything was linked up with each other and mistakes corrected, I moved onto the queries...

#### Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query to find young TD's who are trying to get elected

match(n:Candidate{Occupation: 'TD'}) WHERE n.Age < '30' return n

This query is to find how many TD's are younger than 30. This is due to seeing many TD's in the Media seeming to be older than this. It was interesting to find that only one Candidate came up when the query was entered in; Helen McEntee [Age 29].


#### Query to find Candidates who have a farming background or have an Occupation in farming.
MATCH (n)
WHERE n.Biography CONTAINS 'farm' OR n.Occupation CONTAINS 'farm'
RETURN n

Since farming is starting to become a dying profession, I wanted to see how many Candidates are still working on farms or have a background in farming. When the query was entered, 17 candidates were displayed. This shows that some of the candidates are still interested in farming but want to branch out into other professions.

#### Query to find the total number of Woman running in the election.
match n
Where n.Gender = 'Female'  return n
Order By n.Age

For the most part, men make up most of the election candidates. I wanted to see how many of the candidates were woman. To my surprise they only made up a little more than a quarter of the candidates. I also sorted them by age so that I can see how old the oldest person( Mary White[71]) is and how old the younger person is( Ciara Leonardi Roche[22]). Using 
(match n 
Where n.Age = 'N/A' and n.Gender = 'Female' 
return n Order By n.Name), we can see many woman(24) decide to not disclose their age.

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://www.youtube.com/watch?v=LTdOgvpsR3c, video on how to import excel file into neo4j
3. http://www.thejournal.ie/election-2016/?utm_source=db
4.http://irishpoliticalmaps.blogspot.ie/2012/06/constituency-commission-boundary.html
5.http://neo4j.com/docs/stable/query-where.html#where-match-anywhere-in-a-string
6.http://neo4j.com/docs/stable/query-delete.html
7.http://neo4j.com/docs/stable/query-order.html
8. Ideas for some queries came about from conversations with students G00318025 and G00310769. Many of the discussed topics have been expanded on since.
