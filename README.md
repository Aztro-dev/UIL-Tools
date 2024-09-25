<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* Java
* BASH
* Git

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Aztro-dev/UIL-Tools.git
   ```
2. Copy the contents to the folder you are doing the problem in
   ```sh
   cp UIL-Tools/* ./path/to/folder/
   ```
3. The `generate_problems.sh` file will pull from a template that is in the parent directory, so either edit the file to put the template in the directory of your choice, or just put the template file in the parent directory.

<!-- USAGE EXAMPLES -->
## Usage
```sh
./generate_problems.sh Example ExampleLel ExampleLelz
```
This will generate a structure of folders that looks like this:
```sh
Example/
---> Example.java
ExampleLel/
---> ExampleLel.java
ExampleLelz/
---> ExampleLelz.java
```
With the java files already having the boilerplate completed.
Once you have the file structure set up, you can either just work on the problems that are in the directories or use the `verify.sh` file.
```sh
./verify.sh
```
This will run every file in the directory that hasn't been marked with the `SOLVED` file.
Note that you need a certain file structure to run this.
```sh
Example/
---> Example.java
ExampleLel/
---> ExampleLel.java
ExampleLelz/
---> ExampleLelz.java
JudgeData/
---> example.dat
---> examplelel.dat
---> examplelelz.dat
JudgeOutputFiles/
---> example.out
---> examplelel.out
---> examplelelz.out
```
The `JudgeData` directory contains the inputs to the different programs, and the `JudgeOutputFiles` contains the expected output of the program.
You can also run `verify.sh` on a list of problems too
```sh
./verify.sh Example ExampleLelz
# ...
./verify.sh ExampleLel
```
Note that whenever you solve a problem correctly, `verify.sh` will create a file called `SOLVED` that tells `verify.sh` whether or not to run the problem when requested (it skips previously solved problems). If you don't want this behavior either delete the `SOLVED` files or edit `verify.sh` to exclude creating the file.
