# serbia-holidays.el

Version 1.0.0

The list of Serbian public holidays and Serbian [slava](https://en.wikipedia.org/wiki/Slava_(tradition)) days for Emacs calendar.

## Usage

Download this file and load in Emacs, or place it somewhere where Emacs
will pick it up.

There are two lists, Serbia public holidays and Serbian slava days.
To replace all holidays with Serbia public ones:

``` emacs-lisp
(setq calendar-holidays holiday-serbia-holidays)
```
 
To replace with both public holidays and slava days:

``` emacs-lisp
(setq calendar-holidays (append holiday-serbia-holidays holiday-serbia-slava-days))
```

To append to existing holidays:

``` emacs-lisp
(setq calendar-holidays (append calendar-holidays holiday-serbia-holidays))
```

Or:

``` emacs-lisp
(setq calendar-holidays (append calendar-holidays holiday-serbia-holidays holiday-serbia-slava-days))
```

Both lists come in Serbian language (Cyrillic) format: `holiday-serbia-holidays-sr` and `holiday-serbia-slava-days-sr`.

## License

Copyright (C) 2022 The Paranoid Times Dejan Josifović

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
