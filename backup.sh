#!/bin/bash

# The output file where all the .env files will be concatenated
output_file="env_backup.txt"

# Remove the existing output file to start fresh
if [ -f "$output_file" ]; then
  rm "$output_file"
fi

# Search for .env files and write their contents to the output file
find . -name ".env" | while read -r env_file; do
  # Add a comment with the relative path of the .env file
  echo "######################################################################" >> "$output_file"
  echo "### Filepath: $env_file" >> "$output_file"
  echo "######################################################################" >> "$output_file"
  echo "" >> "$output_file"

  # Append the content of the .env file to the output file
  cat "$env_file" >> "$output_file"
  
  # Add a newline for better readability
  echo "" >> "$output_file"
  echo "######################################################################" >> "$output_file"
  echo "### End of: $env_file" >> "$output_file"
  echo "######################################################################" >> "$output_file"
  echo "" >> "$output_file"
  echo "" >> "$output_file"
done

echo "All .env files have been written to $output_file."
