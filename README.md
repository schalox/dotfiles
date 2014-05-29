## Installation

    git clone https://github.com/schalox/dotfiles.git ~/.dotfiles
    stow --verbose=2 --target=$HOME ~/.dotfiles

## Updating

    cd ~/.dotfiles
    git pull
    stow --restow --verbose=2 --target=$HOME .

## Removing

    cd ~/.dotfiles
    stow --verbose=2 --delete .

## Testing

Use **--no** with stow to do a dry-run.

## License

The software in this repository is free software: you can redistribute
it and/or modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This software is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
