# initialize the variable
$num = 0

# save the name attributes of System.IO.FileInfo into the variable within the current working directory
$files = (gci).name

# foreach element within the $file variable
foreach($f in $files) {
  Rename-item -Path $f -NewName ($f + $num + ".pcap")
  $num++
}
