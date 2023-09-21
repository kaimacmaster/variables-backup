# variables-backup

A simple bash script for backing up environment variables stored in `.env` files within a folder and its subfolders. The backed-up data is written to a single file, making it easy to manage and review your environment variables.

## Running the script

### Backup envs via curl:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/kaimacmaster/variables-backup/main/backup.sh)"
```

### Backup envs via wget:
```bash
sh -c "$(wget https://raw.githubusercontent.com/kaimacmaster/variables-backup/main/backup.sh -O -)"
```

## How It Works

The script will search for `.env` files starting from the folder where it is run. It will then concatenate the content of these `.env` files into one big output file named `env_backup.txt`. Each section in the output file will be preceded by a comment that indicates the relative path of the original `.env` file.

### Example Output

The output file (`env_backup.txt`) will look something like this:

```text
######################################################################
### Filepath: ./project1/.env
######################################################################

DATABASE_URL=example1
SECRET_KEY=example1

######################################################################
### End of: ./project1/.env
######################################################################


######################################################################
### Filepath: ./project2/subfolder/.env
######################################################################

DATABASE_URL=example2
SECRET_KEY=example2

######################################################################
### End of: ./project2/subfolder/.env
######################################################################

```

## 🚨 Caution

Before running any script you find on the internet, make sure to read it thoroughly to understand what it will do to your system. Please review the [backup.sh](https://github.com/kaimacmaster/variables-backup/blob/main/backup.sh) script to ensure it fits your needs.

