mode: dictation
-
#
# Formatting.
#

# The core dictation_mode.talon provides the 'formatted' and 'format selection'
# commands. The former is fluid but does not support "over" to end the formatted
# text; the latter requires saying five syllables.  I will likely propose
# these as improvements.
format <user.format_text> [over]: user.dictation_insert_raw(format_text)
^<user.formatters> that$: user.formatters_reformat_selection(formatters)

# Shortcuts for formatters that I happen to use a lot. Shortcuts like these for
# all formatters would probably not be appropriate in the base repo due to
# word conflicts.
hammer <user.text> [over]: user.dictation_insert_raw(user.formatted_text(text, 'PUBLIC_CAMEL_CASE'))
snake <user.text> [over]: user.dictation_insert_raw(user.formatted_text(text, 'SNAKE_CASE'))
