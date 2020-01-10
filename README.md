#The Monty Hall Challenge

##Overview

In the Monty Hall game, a contestant is shown three doors. Two of the doors have goats behind them and one has a car. The contestant chooses a door. Before opening the chosen door, Monty Hall opens a door that has a goat behind it. The contestant can then switch to the other unopened door, or stay with the original choice.

The objecive of this Ruby program is to demonstrate the statistics of Monty Hall's Game and write the outcome statistics of playing the game 10,000 different times in the results.jpg file.

###Set up:

This program requires use of the image_magick library and mini_magick gem to write the outcome results to the results.jpg file. The mini_magick gem will depend on the image_magick library to work so the image_magick library must be installed first. 

If you are using a Mac, first install the imagemagick library:
```
brew install imagemagick
```
Then install the mini_magick gem:
```
gem install "mini_magick"
```

###Breakdown of the code for the Game:

Lines 3 and 4: I initialize a 'stay' and 'switch' variable at value 0. They will track our outcomes should the player decide to stay with their current door or switch to another door. 

Line 6: I initiate a times loop for 10000 cycles. 

Line 8: I set a doors variable that contains an array with 2 goats and a car that is shuffled each time we play the game. 

Line 10: I set a guess variable which is the users initial guess. This variable uses Ruby's rand(3) method that selects a randon number less than 3 each time through the loop. 

Line 12: With a Begin/End While statement, I set a 'shown' variable that also selects a randon number less than 2, but the end/while statement ensures the number will not be the same as the player's initial guess OR reveal the car. 

Line 14: Uses a ternary statement for an if/else condition that checks the outcome of the game. If the users original guess was the car, our stayed variable is incremented by 1. If the original guess was a goat, we could have won the car by switching and therefore our switch variable increments by 1. 

Line 16: Our loop ends the game. 


###Breakdown of the code for writing text to the results.jpg file:

-We first create a new copy of our results.jpg
-Then we use mini_magick's combine_options method to run a block for several commands to our image.
- Since our original results.jpg contained no binary data, we use image_magick's 'convert' command which gives our results.jpg an area to write on. 
- we set a font size using .point_size
- we draw our results on our results.jpg using string interpolation with the results of our 10000 games. 
- finally we re-write our results.jpg file using .write to update the text. 

