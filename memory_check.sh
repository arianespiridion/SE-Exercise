#!/bin/bash
 
while getopts ":c:w:e" opt; do
  case $opt in
    c)
      echo "Memory use at 90%, Parameter: $OPTARG" >&2
      ;;
    w)
      echo "Memory use between 60% to 90%, Parameter: $OPTARG" >&2
      ;;
    e)
      echo "Send email, Parameter: $OPTARG" >&2
      ;;

    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
