<div align="center">
  
# [ShellScripts.](https://github.com/BrenoFariasdaSilva/ShellScripts) <img src="https://github.com/BrenoFariasdaSilva/ShellScripts/blob/main/.assets/Bash.svg"  width="3%" height="3%">

</div>

<div align="center">
  
---

Welcome to my ShellScript repository! This repository contains a collection of useful shell scripts for software installation, configuration, and various settings. With these scripts, you can automate the process of setting up your system and installing essential software.

---

</div>

## Table of Contents

- [ShellScripts. ](#shellscripts-)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Clone the Repository](#clone-the-repository)
  - [Usage](#usage)
    - [Running a Shell Script](#running-a-shell-script)
  - [Scripts Overview](#scripts-overview)
    - [Software Installation](#software-installation)
    - [Software Settings](#software-settings)
  - [Contributing](#contributing)
  - [License](#license)

## Introduction

Setting up a new system or configuring software can be a time-consuming task. This repository aims to simplify that process by providing a collection of shell scripts that automate various tasks related to software installation and settings. Whether you are setting up a development environment or a server, these scripts will come in handy.

## Getting Started

### Prerequisites

Before using the shell scripts, ensure that you have the following installed on your system:

- **Bash**: The shell scripts are written in Bash, so make sure you have a Bash shell available.

### Clone the Repository

To get started, clone this repository to your local machine using the following command:

```bash
git clone https://github.com/BrenoFariasdaSilva/ShellScripts.git
cd ShellScripts
```  

## Usage

### Running a Shell Script

To run a shell script, first you need to grant execution permission to the shellscripts.
```bash
chmod +x ./*.sh
./GrantPermissions.sh
```

Now, navigate to the repository's root directory and navigate to the repository folder script to execute the script using Bash. For example:

```bash
cd Software-Installation
```

Now that you are in the folder, and you have already have execution permission to all the ShellScript files on it, simply run the desired ShellScript file using the following command:
```bash
./ShellScriptFilename.sh # Example: ./LinuxBasic.sh
```
Before running a script, make sure to review its contents and any instructions provided in the script's comments.

## Scripts Overview

The repository contains the following types of shell scripts:

### Software Installation
These scripts are located in the `Software-Installation` folder.

### Software Settings
These scripts are located in the `Software-Settings` folder.

## Contributing

Contributions to this repository are welcome! If you have a new script to add or want to improve existing scripts, please feel free to submit a pull request. Please ensure that your scripts are well-documented and follow best practices.

## License

This project is licensed under the [Creative Commons Zero v1.0 Universal](LICENSE), which means you are free to use, modify, and distribute the code. See the [LICENSE](LICENSE) file for more details.
