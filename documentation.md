# Bash Basics Project
Bash (short for "Bourne Again SHell") is a command-line shell and scripting language for Unix-based operating systems, including Linux and macOS. It serves as both a command interpreter and a scripting language, providing users with the ability to interact with the operating system via a command-line interface (CLI).
This simple basic bash project of using the various commands to navigate the command-line focuses on incorporation of the simple skills to work on the terminal for Unix-based operatinf systems as well as windows.

## Prequisites
To run the various Bash commands you need to have access to a terminal either locally installed OS or remotely connected.

## Examples of Bash scripting commands used in this project are :
#!/usr/bin/env bash 
 - **mkdir** : makes a directory. # ***mkdir Bosire***

 - **cd**   : changes the directory from the current one to another .# ***cd /home/Bosire/Documents***

  - **wget**: Basic syntax is wget [options] [URL] ; wget is a powerful and flexible tool for downloading files from the internet directly from the commandline . # ***wget https://example.com/file.zip .***

  - **mv**     : move or rename files and directories and has a basic syntax ;mv [options] source destination.

    #***mv file.txt /path/to/destination/*** - this moves a file # ***mv oldname.txt newname.txt*** - this renames a file.

 - **rm**    : The rm command is used to delete files and directories from the filesystem. It's a powerful tool, and you should use it with caution because once a file is removed using rm, it cannot be easily recovered unless you have backups or use special tools. # ***rm file.txt - deleting a single file.***

- **grep** : is a powerful tool for searching text or patterns within files. The name stands for Global Regular Expression Print, and it allows users to search for specific lines that match a pattern (usually defined with regular expressions) in files or standard input. 
    The basic syntax is grep [options] pattern [file...] # ***grep -i “tata” wildtype.fna ***

- **echo** :  used to display a line of text or a string of characters to the terminal or output. It’s one of the most basic and commonly used commands in shell scripting. Without options, echo simply prints the string or text you provide to standard output (the terminal).
It is often used in shell scripts to display messages, or in combination with redirection (> or >>) to write output to files. #***echo "Hello, World!"*** , # ***echo "This is another line" >> output.txt***

- **ls** : is used to list the contents of directories. It displays the names of files, directories, and other information depending on the options you provide. # ***ls [options] [directory]***


### Installation of bioinformatics softwares on the terminal
 There are numerous bioinformatics softwares widely used for various purposes and easily installed via the terminal.
 In this project python and R related softwares were installed , in this simple project we focused on Anaconda / miniconda installation.

 Anaconda is a popular open-source distribution of Python and R, specifically designed for data science, machine learning, and scientific computing. It simplifies package management and deployment by providing tools such as Conda, a powerful package and environment manager. Anaconda comes pre-installed with many data science packages and libraries, making it easy to start working on data-related projects without the hassle of installing individual dependencies.

 #### Key components of Anaconda
 1. Conda: The core package and environment management tool that allows you to create isolated environments with specific versions of Python and libraries. This ensures that different projects can have different configurations without conflicts.

2. Pre-installed Libraries: Anaconda comes with over 1,500 scientific libraries such as NumPy, pandas, matplotlib, and more. This is very useful for data science and machine learning workflows.

3. Jupyter Notebooks: Anaconda includes Jupyter, which is a widely used tool for interactive computing. You can write and run Python code in an interactive notebook format, which is great for data exploration and reporting.

4. Spyder: A powerful integrated development environment (IDE) for Python that comes with Anaconda, specifically designed for scientific and data science applications.

5. Anaconda Navigator: A graphical user interface (GUI) that allows users to manage packages, environments, and launch tools like Jupyter Notebook and Spyder without using the command line.

6. Conda-Forge: A community-maintained repository of packages for Conda, which greatly expands the available packages beyond what is provided by default in Anaconda.

#### Basic commands and Installation of Anaconda
1.  conda activate base - this command activates the base conda environment.
2. conda create --name funtools - this command creates an environment named funtools.
3. conda activate funtools - this activates the funtools environment
4. conda install  -c conda-forge figlet - this installs figlet which is a command-line utility that generates large text banners made up of ASCII characters. It is commonly used to create stylized text art in the terminal.
5. conda install bwa - this installs the bwa tool through the bioconda channel.
6. conda install blast - this installs blast through the bioconda channel.
7. conda install multiqc
8. conda install fastp
9. conda install bcftools
10. conda install -c bioconda spades.py

All of the  above tools are installed via the bioconda channel.













