# Changeo Singularity Image

This repository provides a Singularity image that includes Jupyter Notebook and the `changeo` Python package. It comes with a Makefile to help manage the image creation, sandbox environment, and running the container.

## Getting Started

### Prerequisites

- [Singularity](https://sylabs.io/docs/) or [Apptainer](https://apptainer.org/) installed on your system.
- Basic knowledge of using command-line tools.

### Repository Structure

- `changeo_image.sif` - The Singularity image file containing Jupyter Notebook and `changeo`.
- `Makefile` - Automates image building, sandbox creation, and running.
- `shell.sh` - Script used for modifying the sandbox environment.
- `run.sh` - Script used to run the Singularity image.
- `README.md` - This file.

### Building the Singularity Image

To build the Singularity image, use the following command:

```sh
make build
```

**Explanation:**
- `make build` triggers the `build` target in the `Makefile`, which will create the `changeo_image.sif` file from the Singularity recipe file.

### Creating and Using a Sandbox

1. **Create a Sandbox:**

```sh
make restart 
```

   **Explanation:**
   - `make restart` triggers the `restart` target in the `Makefile`, which creates a writable sandbox environment from the definition file 'changeo_1.0.txt'. The sandbox allows you to interactively modify the container.

2. **Modify the Sandbox:**

   Enter the sandbox environment using the shell script:

```sh
./shell.sh
```

   **Explanation:**
   - `./shell.sh` executes the `shell.sh` script, which opens a shell within the sandbox. You can use this environment to make changes or install additional packages.

### Running the Singularity Image

To run the Singularity image and start Jupyter Notebook, use:

```sh
./run.sh
```

**Explanation:**
- `./run.sh` executes the `run.sh` script, which starts the Singularity container and launches the Jupyter Notebook server.

### Example Usage

1. **Build the Image:**
2. **Create and Modify Sandbox (if needed):**
3. **Run the Jupyter Notebook:**


# Main usage

My main usage of these images is to have a stable software environment that I can easily copy to a secure analysis server like COSMOS-SENS.

In order to make this package usable on cosmos you need to create a module, but this would blow the scope for this here.

# Additional Information

- For more details on `changeo`, refer to its [documentation](https://github.com/changeo/changeo).
- If you encounter issues or have questions, please open an issue on the GitHub repository.


