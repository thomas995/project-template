// Describe your query
// at the start
// in comments.


#### Query to find Candidates who have a farming background or have an Occupation in farming.
MATCH (n)
WHERE n.Biography CONTAINS 'farm' OR n.Occupation CONTAINS 'farm'
RETURN n

Since farming is starting to become a dying profession, I wanted to see how many Candidates are still working on farms or have a background in farming. When the query was entered, 17 candidates were displayed. This shows that some of the candidates are still interested in farming but want to branch out into other professions.