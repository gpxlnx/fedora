run_segment() {
  jdate | gawk '{print $2" "$3}'
}
