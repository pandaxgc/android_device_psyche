#!/bin/bash

extract_script_directory_name() {
    script_dir=$(dirname "$0")
    directory_name=$(basename "$script_dir")
    echo "$directory_name"
}

extract_device_manufacturer() {
    script_dir=$(dirname "$0")
    parent_dir=$(dirname "$script_dir")
    manufacturer=$(basename "$parent_dir")
    echo "$manufacturer"
}

vendor_update_file="vendor-update.txt"
if [ ! -f "$vendor_update_file" ]; then
    echo "Error: vendor-update.txt not found."
    exit 1
fi

script_directory_name=$(extract_script_directory_name)

device_manufacturer=$(extract_device_manufacturer)

extract_directory_name() {
    line=$(grep -E 'sources_dir_name:' "$1")

    directory_name=$(echo "$line" | sed -n 's/sources_dir_name:[[:space:]]*\(.*\)/\1/p')
    if [ -z "$directory_name" ]; then
        echo "Error: Directory name not found in $1."
        exit 1
    fi

    new_directory_name=$(echo "$directory_name" | sed "s/device_tree/$script_directory_name/")

    echo "$new_directory_name"
}

directory_name=$(extract_directory_name "$vendor_update_file")

./extract-files.sh -k ~/"$directory_name"/device/"$device_manufacturer"/"$script_directory_name" --only-target

read -n 1 -s -r -p "Your vendor is successfully generated. Press any key to exit..."

exit 0
