UffeAid
=======

Keep snafu in touch with the world

Since his employer has blocked all ports except 80, the little guy needed some way to stay in touch. 
Extremly crude script to display irc conversation on web page with hilight for the man in question

This script is executed as a cron job once every minute

The last row is used to send all rows with specified word to snafus gtalk via ii (http://tools.suckless.org/ii/), connected to bitlbee (http://www.bitlbee.org/). 
Commented out until I figure out a way to make it smarter. Needs to keep track of lines that has been sent previously.
