mode: dictation
-
#
# Formatting.
#

# The core dictation_mode.talon provides the 'formatted' and 'format selection'
# commands. The former is fluid but does not support "over" to end the formatted
# text; the latter requires saying five syllables.
format <user.format_text> [over]: user.dictation_insert_raw(format_text)
^<user.formatters> that$: user.formatters_reformat_selection(formatters)

# Shortcuts for formatters that I happen to use a lot. Shortcuts like these for
# all formatters would probably not be appropriate in the base repo due to
# word conflicts.
hammer <user.text> [over]: user.dictation_insert_raw(user.formatted_text(text, 'PUBLIC_CAMEL_CASE'))
snake <user.text> [over]: user.dictation_insert_raw(user.formatted_text(text, 'SNAKE_CASE'))
all caps <user.text> [over]: user.dictation_insert_raw(user.formatted_text(text, 'ALL_CAPS'))

# Fluid commands for spelling arbitrary words in lower or upper case.
spell <user.letters>: user.dictation_insert_raw(letters)
ship <user.letters>:
    user.dictation_insert_raw(user.formatted_text(letters, "ALL_CAPS"))

pee <user.number_string>:
   user.dictation_insert_raw("p" + number_string)

# XXX TODO: Make a new action that strips whitespace, sine otherwise a copied
# newline can send a message during paste.
#
# It would also be great if I could say "format dubstring paste that".
# The format_text capture takes user.text so "paste that" appears literally.
# Context override for the action?
paste that: user.dictation_insert_raw(clip.text())

bug link: "b/"
