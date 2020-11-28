for item in $(kaggle kernels list --user USERNAME); do
        if [[ $item == *"USERNAME"* ]]; then
                toreplace=""
                kaggle kernels pull $item -p "${item/USERNAME\/$toreplace}"
        fi
done;
git add .;
git commit -m 'update';
git push -u origin master;