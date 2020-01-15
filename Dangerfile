# frozen_string_literal: true

# FILE HELPERS
gitfiles = (git.modified_files + git.added_files).uniq
has_code_changes = !gitfiles.grep(/^Sources/).empty?
has_tests_changes = !gitfiles.grep(/^Tests/).empty?

# BASIC CHECKS:
warn 'Big PR, try to keep changes smaller if you can 😜' if git.lines_of_code > 500

# SWIFTLINT
swiftlint.lint_all_files = true
swiftlint.lint_files fail_on_error: true

# TEST EVOLUTION CHECK:
if has_code_changes
	warn('You have changes in code but there is no changes in any test... do you sleep well at night? 🤨') unless has_tests_changes
end
