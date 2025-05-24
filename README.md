This repository contains exported games (dungeons) in JSON format, which can be
imported to a running Dungeon Crawl server. These will have been run through a linter
to add more human readable spacing (as well as make it easier to compare revisions via
`git diff`)

https://github.com/callahat/dungeon_crawl

## Games

To verify the basic export matches the linted and spaced one, check via `irb` or `iex`. For example:

```ruby
require 'json'

a = JSON.parse(File.read('Mainline_export.json'))
b = JSON.parse(File.read('Mainline_export_linted.json'))
a == b
# => true # if they are equivalent
```

```elixir
a = JSON.decode(File.read!("Mainline_export.json"))
b = JSON.decode(File.read!("Mainline_export_linted.json"))
a == b
# => true # if they are equivalent
```

### Mainline_export.json

The main first game that uses all (or nearly all) of the supported features. Including
scripting commands, dungeon and level environmental state settings, gameover mechanics
and score keeping.

The main object of the game is to collect purple keys to unlock the purple doors on the
entry screen. Can be played solo but can also be played with friends.

### Chore_Simulator.json

The second game that uses some newer mechanics (such as timed messages) and is meant
to be more of a repetitive game loop experience where a player can relax and explore,
farm, and do other things without an explicit win/lose goal.

Still in development and unfinished.