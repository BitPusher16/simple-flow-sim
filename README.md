# simple-flow-sim
simple airflow simulator based on bouncing balls

# following directory structure suggested here:
https://www.lucavall.in/blog/how-to-structure-c-projects-my-experience-best-practices

├── .devcontainer           configuration for GitHub Codespaces
├── .github                 configuration GitHub Actions and other GitHub features
├── .vscode                 configuration for Visual Studio Code
├── bin                     the executable (created by make)
├── build                   intermediate build files e.g. *.o (created by make)
├── docs                    documentation
├── include                 header files
├── lib                     third-party libraries
├── scripts                 scripts for setup and other tasks
├── src                     C source files
│   ├── main.c             (main) Entry point for the CLI
│   └── *.c
├── tests                   contains tests
├── .clang-format           configuration for the formatter
├── .clang-tidy             configuration for the linter
├── .gitignore
├── compile_commands.json   compilation database for clang tools
├── LICENSE
├── Makefile
└── README.md

# debugging
use BEAR to generate compile_commands.json from makefile.
run with $ bear make
