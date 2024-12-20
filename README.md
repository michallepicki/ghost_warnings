# GhostWarnings

```
~/ghost_warnings$ mix compile
Compiling 1 file (.ex)
    warning: comparison between distinct types found:

        GhostWarnings.color(assigns.user) == :red

    given types:

        dynamic(:blue or :yellow) == :red

    where "assigns" was given the type:

        # type: dynamic()
        # from: lib/templates/component_in_file.html.heex:4
        assigns

    While Elixir can compare across all types, you are comparing across types which are always disjoint, and the result is either always true or always false

    typing violation found at:
    │
  1 │ <div data-warning-shown-only-once={GhostWarnings.color(@user) == :red}></div>
    │ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    │
    └─ lib/templates/component_in_file.html.heex:1: Thingy.component_in_file/1

Generated ghost_warnings app
~/ghost_warnings$ mix compile
~/ghost_warnings$ echo $?
0
```