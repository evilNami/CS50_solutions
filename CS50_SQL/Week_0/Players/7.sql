select count(id) as count
from players
where (bats = 'R' AND throws = 'L') or (bats = 'L' AND throws = 'R') ;
