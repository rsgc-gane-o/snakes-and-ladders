// Russell Gordon

// Notes
// 
// This is basically a situation of repeated addition, with some special cases:
//
// a snake, where the position will be reduced
// a ladder, where the position will be increased
//
// I note that to win, you must roll exactly the sum needed to get to 100
// (not past 100, that doesn't count)

// Input
var sumOfDice : Int = 7

// Other variables
var position : Int = 1

// Process
print("You are now on square \(position). Enter sum of dice:")

// Move the player
position += sumOfDice

// Update
print("You are now on square \(position). Enter sum of dice:")

// Here I would need to do a check to see if there is a snake or ladder on this position
// Then I'd update the position accordingly.