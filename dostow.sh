for dir in */; do
  dir="${dir%/}"
  stow $dir
  echo "stowed $dir"
done
