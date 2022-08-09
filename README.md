#This repo contains the RSA encryption project for seng440.#

###There are 4 different c files included in this repo. brute.c contains the brute force RSA solution, test.c contains the RSA solution using mmm, optimize.c contains the optimized solution using mmm and look_up.c includes the solution that contains a lookup table.###

To run the program you must ssh into ugls.ece.uvic.ca and then ssh onto seng440.ece.uvic.ca

_All of the files in this repo must be run in the /tmp directory of seng440.ece.uvic.ca_

To compile:
`arm-linux-gcc -S -static -o test.exe test.c`

To upload to arm machine:
`lftp -c "open user1:q6coHjd7P@arm; mirror -P 10 -R -x '.git' . grymaloski;"`

Log onto the arm machine:
`telnet arm`

Cd into the directory made:
`cd grymaloski`

Run the program:
`./test.exe`
