for dir in */; do
  dir="${dir%/}"
  stow -D $dir
  echo "unstowed $dir"
done

