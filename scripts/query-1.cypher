// Describe your query
// at the start
// in comments.


#### Query to find young TD's who are tryin to get elected

match(n:Candidate{Occupation: 'TD'}) WHERE n.Age < '30' return n

This query is to find how many TD's are younger than 30. This is due to seeing many TD's in the Media seeming to be older than this. It was interesting to find that only one Candidate came up when the query was entered in; Helen McEntee [Age 29].
