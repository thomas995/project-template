// Describe your query
// at the start
// in comments.


#### Query to find the total number of Woman running in the election.
match n
Where n.Gender = 'Female'  return n
Order By n.Age

For the most part, men make up most of the election candidates. I wanted to see how many of the candidates were woman. To my surprise they only made up a little more than a quarter of the candidates. I also sorted them by age so that I can see how old the oldest person(Mary White[71]) is and how old the younger person is(Ciara Leonardi Roche[22]). Using 
(match n 
Where n.Age = 'N/A' and n.Gender = 'Female' 
return n Order By n.Name), we can see many woman(24) decide to not disclose their age.