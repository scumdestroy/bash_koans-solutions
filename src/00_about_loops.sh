lesson_title 'Loops'

test_for_loops() {
  local sum
  # _ is a (rather obscure) dummy variable (used for throwaway values)
  for x in $( seq 1 10 ); do
    (( sum++ ))
  done
  assertEqual $sum 10
}

test_while_loops() {
  counter=0
  while [ $counter -lt 5 ]; do
    (( counter++ ))
  done

  assertEqual $counter 5
}


test_until_loops() {
  counter=10
  until [ $counter -lt 7 ]; do
    (( counter-- ))
  done

  assertEqual $counter 6
}
