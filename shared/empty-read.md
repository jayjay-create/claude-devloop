**No value at all is not one of the values.** A read that comes back with
nothing — refused before it ran, blocked, or answering nothing where the field
was asked for — has not read the pull request. Every pull request carries a
`mergeStateStatus`, so nothing coming back is a fact about the query and none
about the pull request, and it is not `UNKNOWN`: that is an answer GitHub gave,
and this is no answer at all. Read it once more, as the one second attempt
allows; if that comes back empty too, **do not arm.** The state is read
immediately before the mutation, and there is no state to have read, so arming
would be acting on nothing — which is what separates this from a value in none
of the groups, where the pull request was read and only the name is unknown.
Say the query did not answer, name the command and the message that came back
in place of a value, and hand the merge over on that. It is none of the three
cases below: they are readings of a repository, and this is a reading that did
not happen.
