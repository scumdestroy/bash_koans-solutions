lesson_title "Conditions"

test_if_condition() {

  local test='ok'

  if [ $test = 'ok' ]; then
    local assert='YES'
  fi

  assertEqual $assert 'YES'
}


test_if_condition_with_else() {

  local test='nope'

  if [ $test == 'ok' ]; then
    local assert='YES'
  else
    local assert='NO'
  fi

  assertEqual $assert 'NO'
}

test_if_condition_with_variables() {
  local variable="OMG"
  local condition='OMG' #__

  if [  "$variable" = "$condition" ]; then
    local assert='ok'
  fi

  assertEqual $assert ok

}

test_multiple_if_conditions() {

  local test='zomg' # __

  if [ $test = 'ok' ]; then
    local assert='no'
  elif [ $test = 'zomg' ]; then
    local assert='YES'
  fi

  assertEqual $assert 'YES'

}

test_directory_if_conditions() {
  if [ -d src ]; then
    local assert='yes'
  fi

  assertEqual $assert 'yes'

  if [ ! -d NOT_EXISTENT_DIR ]; then
    local assert='no'
  fi

  assertEqual $assert 'no'

}

test_file_if_conditions() {
  if [ -f README.md ]; then
    local assert='yes'
  fi

  assertEqual $assert 'yes'

}

# TODO add koans for 'man test' entries
