
#!/bin/bash

# Fetch the download URL for the latest version of Zig for Linux x86_64
ZIG_URL=$(wget -qO- https://ziglang.org/download/index.json | jq -r '.master."x86_64-linux".tarball')

# Check if the URL was successfully retrieved
if [ -z "$ZIG_URL" ]; then
    echo "Failed to retrieve the download URL for Zig."
    exit 1
fi

echo "Downloading from: $ZIG_URL"

# Download the file to check its type
wget -qO zig.tar.xz "$ZIG_URL"

# Check the file type
FILE_TYPE=$(file zig.tar.xz)
echo "File type of downloaded content: $FILE_TYPE"

# Ensure it's a tarball before extracting
if [[ "$FILE_TYPE" == *"XZ compressed data"* ]]; then
    # Extract the downloaded tarball
    tar -xf zig.tar.xz -C $HOME/.local/
    if [ $? -ne 0 ]; then
        echo "Failed to extract Zig."
        exit 1
    fi
else
    echo "The downloaded file is not a valid tarball."
    exit 1
fi

echo 'export PATH="$HOME/.local/zig-linux-x86_64-<version>:$PATH"' >> ~/.bashrc
echo "Zig installation completed successfully."

