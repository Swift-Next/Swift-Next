# Changelog

## Unreleased — Swift 6.4.1 language target

- Add macro declarations, generic and module-qualified expansions, parameter packs, ownership modifiers, `sending`, `package` access and isolation options.
- Support typed throws, suppressed conformances, integer generic arguments, module selectors, borrowing accessors and modern built-in attributes.
- Add regex literal highlighting and protect division and comments from regex misclassification.
- Correct raw-string delimiter matching, escape/interpolation hash counts and comment handling.
- Fix calls named `set` being highlighted as accessor declarations; preserve named setter/observer parameters.
- Highlight modern public library symbols and give the hidden symbol syntax its own scope so it cannot replace the Swift entry syntax.
- Pass script filenames as command arguments and run scripts in their own directory.
- Add modern scope assertions, rename legacy fixtures for standalone runner discovery, and add static validation plus native syntax-test CI.
- Correct the Package Control name and manual-install location in the README.
