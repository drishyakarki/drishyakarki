file_path="README.md"

current_date=$(date +"%Y-%m-%d %H:%M:%S")

if [[ $(head -n 1 "$file_path") == "#### Current Date: "* ]]; then
    sed -i "1s/.*/#### Current Date: $current_date/" "$file_path"
else
    echo -e "#### Current Date: $current_date\n\n$(cat $file_path)" > "$file_path"
fi

echo "Current date $current_date has been added to the file."

git add README.md
git commit -m "It's a new day"
git push origin main