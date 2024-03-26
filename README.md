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

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**. If you have suggestions for improving the code, your insights will be highly welcome.
In order to contribute to this project, please follow the guidelines below or read the [CONTRIBUTING.md](CONTRIBUTING.md) file for more details on how to contribute to this project, as it contains information about the commit standards and the entire pull request process.
Please follow these guidelines to make your contributions smooth and effective:

1. **Set Up Your Environment**: Ensure you've followed the setup instructions in the [Setup](#setup) section to prepare your development environment.

2. **Make Your Changes**:
   - **Create a Branch**: `git checkout -b feature/YourFeatureName`
   - **Implement Your Changes**: Make sure to test your changes thoroughly.
   - **Commit Your Changes**: Use clear commit messages, for example:
     - For new features: `git commit -m "FEAT: Add some AmazingFeature"`
     - For bug fixes: `git commit -m "FIX: Resolve Issue #123"`
     - For documentation: `git commit -m "DOCS: Update README with new instructions"`
     - For refactors: `git commit -m "REFACTOR: Enhance component for better aspect"`
     - For snapshots: `git commit -m "SNAPSHOT: Temporary commit to save the current state for later reference"`
   - See more about crafting commit messages in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

3. **Submit Your Contribution**:
   - **Push Your Changes**: `git push origin feature/YourFeatureName`
   - **Open a Pull Request (PR)**: Navigate to the repository on GitHub and open a PR with a detailed description of your changes.

4. **Stay Engaged**: Respond to any feedback from the project maintainers and make necessary adjustments to your PR.

5. **Celebrate**: Once your PR is merged, celebrate your contribution to the project!

## License

This project is licensed under the [Creative Commons Zero v1.0 Universal](LICENSE), which means you are free to use, modify, and distribute the code. See the [LICENSE](LICENSE) file for more details.
