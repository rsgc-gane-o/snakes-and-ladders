//
//  main.swift
//  snakes-and-ladders
//
//  Created by Russell Gordon on 2016-03-06.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

// Notes
//
// This is basically a situation of repeated addition, with some special cases:
//
// a snake, where the position will be reduced
// a ladder, where the position will be increased
//
// I note that to win, you must roll exactly the sum needed to get to 100
// (not past 100, that doesn't count)

// Key variables
var position : Int = 1
var sumOfDice : Int = -1       // Invalid value

// OK, get input from the user until they win
repeat {

    // Prompt the user
    print("You are now on square \(position). Enter sum of dice:")
    
    // Get input from the user
    // Must safely unwrap optional String returned from readLine
    if let input = readLine(stripNewline: true) {
        
        // Now we have non-nil input
        // See if we can convert it to an integer
        if let inputAsInteger = Int(input) {
            
            // OK, we must have an integer
            // See if it is in range required
            if inputAsInteger == 0 || inputAsInteger >= 2 && inputAsInteger <= 12 {
                
                // We have valid input
                // Take this dice roll and work with it
                sumOfDice = inputAsInteger
                
                // Move the player if user did not ask to end game
                if sumOfDice != 0  && position + sumOfDice <= 100 {
                    
                    // Move the player
                    position += sumOfDice
                    
                    // Check for a snake
                    if position == 54 {
                        position = 19
                    } else if position == 90 {
                        position = 48
                    } else if position == 99 {
                        position = 77
                    }
    
                }
            }

        }
    
    }

    
} while position != 100 && sumOfDice != 0

// Say the user either won, or quit
print("You are now on square \(position).", terminator: "")
if sumOfDice == 0 {
    print(" You Quit!")
} else {
    print(" You Win!")
}