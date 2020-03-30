#!/usr/bin/env bash

function generate() {
  no_ending=$(echo $1 | sed "s/.tex//")
  latex $1 &> "gen-${no_ending}.log" && dvisvgm $(echo $no_ending | sed "s/$/.dvi/") && {
        rm "${no_ending}.dvi"
    rm "gen-${no_ending}.log" # nothing went wrong, can delete self generated log file
  } && {
    echo -e "\e[32m\e[1mSuccessfully parsed file ${no_ending}.tex\e[0m"
  } || {
    echo -e "\e[31m\e[1mError in file ${no_ending}.tex\e[0m"
  }

  rm "${no_ending}.aux" # remove as these are also generated when an error
  rm "${no_ending}.log" # occures and the gen-<file>.log files already cover this
}

export -f generate

ls | grep ".tex" | xargs -L1 -I {} bash -c 'generate "$@"' _ {}
