# Tic Tac Toe Game with OOP Ruby

This project aims to develop Tic Tac Toe Game with Ruby. The main goal is to put into practice the main concepts of Object Oriented Programming. Particularly, classes and access to their attributes.

## Getting Started

To get a local copy up and running follow these simple steps.

- On the project GitHub page, navigate to the main page of the repository [this page](https://github.com/teekaytech/Tic-Tac-Toe).
- Under the repository name, locate and click on a green button named 'Clone or download'. 
- Copy the project URL as displayed.
- If you're running Windows Operating System, open your command prompt. On Linux, Open your terminal.
- Change the current working directory to the location where you want the cloned directory to be made. Leave as it is if the current location is where you want the project to be.
- Type `git clone`, and then paste the URL you copied in Step 3.
`$ git clone https://github.com/teekaytech/Tic-Tac-Toe`
- Press Enter. Your local copy will be created.

Please Note that you must have github installed on your PC, this can be done [here](https://gist.github.com/derhuerst/1b15ff4652a867391f03).


### Prerequisites

Since all the code is written using ruby, `Ruby Runtime >= 1.9` is required to interpret the code. If you don't have ruby runtime already setup on your computer, follow the instruction for your specific operating system on the [official installation guide](https://www.ruby-lang.org/en/documentation/installation/)

### Usage

After cloning on your computer, open the folder using your terminal/command prompt window and run

`bin/main.rb`

### Introduction to Tic-Tac-Toe Game
Tic-tac-toe (American English), noughts and crosses (British English), or Xs and Os is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner. [read-more](https://en.wikipedia.org/wiki/Tic-tac-toe)

### How to play
- When the game is started (`bin/main.rb`), the game prompts the two players to enter their names simultaneously, after which the game displays the board and requests the first player to make a move.<br>
![screenshot](/assets/img/shot1.png)

- The game board is a 3 x 3 matrix consisting of numbers from 1 to 9.
- The first player moves are represented on the board with 'X', while the second player moves represented with 'O'
- For a player to have a valid move, the player must select one of the available numbers on the board. Anything aside that represents an invalid move.<br>
![screenshot](/assets/img/shot2.png)

- Any cell of the board consisting of player move identifiers (`X` or `O`) cannot be reselected. If selected, it is counted as an inalid move and such player is prompted to reselect/remake move as seen above.

- The players make moves one after the other. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner.<br>
![screenshot](/assets/img/shot3.png)

- If no player succeed in making the above arrangement till all moves are made, the game is ended in a draw.
![screenshot](/assets/img/shot4.png)

- If the players decide to replay, they can press any key to continue or press `N` to stop the game.

## Author

👤 **Taofeek Olalere**

- Github: [@teekaytech](https://github.com/teekaytech)
- Twitter: [@olalere](https://twitter.com/ola_lere)
- Linkedin: [linkedin](https://linkedin.com/in/teekaytech)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project.

## 📝 License

This project is [MIT](lic.url) licensed.

## Acknowledgements

- [Microverse](https://microverse.pathwright.com/library/fast-track-curriculum/69047/path/step/57421589/)
- [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/basic-enumerable-methods#learning-outcomes)
- [GitHub](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
- [Hitesh Choudhary](https://www.youtube.com/watch?v=qU_gdQ1FvjM)
