;;; serbia-holidays.el --- A list of Serbia holidays for Emacs calendar.  -*- lexical-binding: t; -*-

;; Copyright (C) 2022 The Paranoid Times Dejan Josifović
;;; Version: 1.0.0
;;; Author: Dejan Josifović <theparanoidtimes@posteo.net>
;;; URL: https://github.com/28/serbia-holidays.el
;;; Released: December 2022

;; Keywords: calendar, holidays

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Download this file and load in Emacs, or place it somewhere where Emacs
;; will pick it up.
;;
;; There are two lists, Serbia public holidays and Serbian slava days.
;; To replace all holidays with Serbia public ones:
;;
;; (setq calendar-holidays holiday-serbia-holidays)
;; 
;; To replace with both public holidays and slava days:
;;
;; (setq calendar-holidays (append holiday-serbia-holidays holiday-serbia-slava-days))
;;
;; To append to existing holidays:
;;
;; (setq calendar-holidays (append calendar-holidays holiday-serbia-holidays))
;;
;; Or:
;;
;; (setq calendar-holidays (append calendar-holidays holiday-serbia-holidays holiday-serbia-slava-days))
;;
;; Both lists come in Serbian language (Cyrillic) format: holiday-serbia-holidays-sr and holiday-serbia-slava-days-sr.

;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

;;;###autoload
(defvar holiday-serbia-holidays
  '((holiday-fixed 1 1 "New Year's Day")
    (holiday-fixed 1 7 "Orthodox Christmas")
    (holiday-fixed 1 27 "Saint Sava's Day")
    (holiday-fixed 2 15 "Serbian Statehood Day")
    (holiday-fixed 4 22 "National Holocaust, WWII Genocide and other Fascist Crimes Victims Remembrance Day")
    (holiday-greek-orthodox-easter -2 "Good Friday")
    (holiday-greek-orthodox-easter 0 "Orthodox Easter")
    (holiday-greek-orthodox-easter 1 "Orthodox Easter second day")
    (holiday-fixed 5 1 "May Day")
    (holiday-fixed 5 9 "Victory Day")
    (holiday-fixed 6 28 "Saint Vitus' Day")
    (holiday-fixed 10 21 "World War II Serbian Victims Remembrance Day")
    (holiday-fixed 11 11 "Armistice Day"))
  "Serbia holidays.")

;;;###autoload
(defvar holiday-serbia-holidays-sr
  '((holiday-fixed 1 1 "Нова година")
    (holiday-fixed 1 7 "Божић")
    (holiday-fixed 1 27 "Свети Сава")
    (holiday-fixed 2 15 "Сретење / Дан државности")
    (holiday-fixed 4 22 "Дан сећања на жртве холокауста, геноцида и других жртава у Другом светском рату")
    (holiday-greek-orthodox-easter -2 "Велики петак")
    (holiday-greek-orthodox-easter 0 "Васкрс")
    (holiday-greek-orthodox-easter 1 "Други дан Васкрса")
    (holiday-fixed 5 1 "Празник рада")
    (holiday-fixed 5 9 "Дан победе")
    (holiday-fixed 6 28 "Видовдан")
    (holiday-fixed 10 21 "Дан сећања на српске жртве у Другом светском рату")
    (holiday-fixed 11 11 "Дан примирја у Првом светском рату"))
  "Празници у Србији.")

;;;###autoload
(defvar holiday-serbia-slava-days
  '((holiday-fixed 1 2 "The Hieromartyr Ignatius the God-Bearer")
    (holiday-fixed 1 9 "Saint Stephen")
    (holiday-fixed 1 14 "Saint Basil")
    (holiday-fixed 1 20 "Saint John the Baptist")
    (holiday-fixed 1 27 "Saint Sava")
    (holiday-fixed 1 29 "Veneration of the Precious Chains of St. Peter")
    (holiday-fixed 2 12 "The Three Hierarchs")
    (holiday-fixed 2 14 "Saint Tryphon")
    (holiday-fixed 2 15 "The Presentation of the Lord")
    (holiday-fixed 2 16 "Saint Simeon")
    (holiday-fixed 3 22 "The Forty Holy Martyrs of Sebaste")
    (holiday-fixed 5 6 "Saint George")
    (holiday-fixed 5 8 "Saint Mark")
    (holiday-fixed 5 12 "Saint Basil of Ostrog")
    (holiday-fixed 5 14 "The Holy Prophet Jeremiah")
    (holiday-fixed 5 21 "Saint John the Theologian")
    (holiday-fixed 5 22 "The Translation of the Relics of Saint Nicholas")
    (holiday-fixed 5 24 "Saint Cyril and Methodius")
    (holiday-fixed 6 3 "The Holy Emperor Constantine and the Empress Helena")
    (holiday-fixed 6 28 "The Holy Martyr Lazar - Saint Vitus")
    (holiday-fixed 7 7 "The Nativity of Saint John")
    (holiday-fixed 7 12 "Saint Peter")
    (holiday-fixed 7 21 "Saint Procopius")
    (holiday-fixed 7 26 "The Holy Archangel Gabriel")
    (holiday-fixed 7 30 "The Holy Martyr Marina")
    (holiday-fixed 8 2 "Saint Elias")
    (holiday-fixed 8 4 "Saint Mary Magdalene")
    (holiday-fixed 8 9 "Saint Panteleimon")
    (holiday-fixed 9 11 "The Beheading of Saint John")
    (holiday-fixed 9 22 "Saints Joachim and Anna")
    (holiday-fixed 10 12 "Saint Cyriacus")
    (holiday-fixed 10 14 "The Protecting Veil of the Most Holy Mother of God")
    (holiday-fixed 10 19 "Saint Thomas")
    (holiday-fixed 10 20 "Saint Martyrs Sergius and Bacchus")
    (holiday-fixed 10 27 "Saint Petka - Paraskeva")
    (holiday-fixed 10 31 "Saint Luke")
    (holiday-fixed 11 1 "Saint Prochorus of Pchinja")
    (holiday-fixed 11 8 "Saint Dimitrios")
    (holiday-fixed 11 11 "Saint Venerable Abramius")
    (holiday-fixed 11 14 "Saints Cosmas and Damian")
    (holiday-fixed 11 16 "Saint George")
    (holiday-fixed 11 21 "The Holy Archangel Michael")
    (holiday-fixed 11 24 "Saint Menas")
    (holiday-fixed 11 25 "Saint John the Merciful")
    (holiday-fixed 11 26 "Saint John Chrysostom")
    (holiday-fixed 11 29 "Saint Matthew")
    (holiday-fixed 12 4 "The Entry into the Temple of the Most Holy Mother of God")
    (holiday-fixed 12 9 "Saint Alypius")
    (holiday-fixed 12 13 "Saint Andrew")
    (holiday-fixed 12 19 "Saint Nicolas"))
  "Serbian slava days.")

;;;###autoload
(defvar holiday-serbia-slava-days-sr
  '((holiday-fixed 1 2 "Свети Игњатије Богоносац")
    (holiday-fixed 1 9 "Свети Стефан")
    (holiday-fixed 1 14 "Свети Василије")
    (holiday-fixed 1 20 "Свети Јован Крститељ")
    (holiday-fixed 1 27 "Свети Сава")
    (holiday-fixed 1 29 "Часне вериге Светог Петра")
    (holiday-fixed 2 12 "Света Три Јерарха")
    (holiday-fixed 2 14 "Свети Трифун")
    (holiday-fixed 2 15 "Сретење Господње")
    (holiday-fixed 2 16 "Свети Симеон")
    (holiday-fixed 3 22 "Светих 40 мученика - Младенци")
    (holiday-fixed 5 6 "Свети Георгије - Ђурђевдан")
    (holiday-fixed 5 8 "Свети Марко")
    (holiday-fixed 5 12 "Свети Василије Острошки")
    (holiday-fixed 5 14 "Свети пророк Јеремија")
    (holiday-fixed 5 21 "Свети Јован Богослов")
    (holiday-fixed 5 22 "Свети Никола летњи")
    (holiday-fixed 5 24 "Свети Ђирило и Методије")
    (holiday-fixed 6 3 "Свети Цар Константин и Царица Јелена")
    (holiday-fixed 6 28 "Свети Цар Лазар - Видовдан")
    (holiday-fixed 7 7 "Ивањдан")
    (holiday-fixed 7 12 "Петровдан")
    (holiday-fixed 7 21 "Свети Прокопије")
    (holiday-fixed 7 26 "Свети Арханђел Гаврило")
    (holiday-fixed 7 30 "Огњена Марија")
    (holiday-fixed 8 2 "Свети Илија")
    (holiday-fixed 8 4 "Блага Марија")
    (holiday-fixed 8 9 "Свети Пантелејмон")
    (holiday-fixed 9 11 "Свети Јован - Усековање")
    (holiday-fixed 9 22 "Свети Јоаким и Ана")
    (holiday-fixed 10 12 "Михољдан")
    (holiday-fixed 10 14 "Покров Пресвете Богородице")
    (holiday-fixed 10 19 "Свети Тома - Томиндан")
    (holiday-fixed 10 20 "Свети Сергеј и Вакхо - Срђевдан")
    (holiday-fixed 10 27 "Света Петка - Параскева")
    (holiday-fixed 10 31 "Свети Лука")
    (holiday-fixed 11 1 "Свети Прохор Пчињски")
    (holiday-fixed 11 8 "Свети Димитрије - Митровдан")
    (holiday-fixed 11 11 "Свети Аврамије")
    (holiday-fixed 11 14 "Свети Козма и Дамјан - Врачеви")
    (holiday-fixed 11 16 "Свети Георгије - Ђурђиц")
    (holiday-fixed 11 21 "Свети Арханђел Михајло - Аранђеловдан")
    (holiday-fixed 11 24 "Свети Мрата - Мратиндан")
    (holiday-fixed 11 25 "Свети Јован Милостиви")
    (holiday-fixed 11 26 "Свети Јован Златоусти")
    (holiday-fixed 11 29 "Свети Матеј")
    (holiday-fixed 12 4 "Ваведење Пресвете Богородице")
    (holiday-fixed 12 9 "Свети Алимпије")
    (holiday-fixed 12 13 "Свети Андреј")
    (holiday-fixed 12 19 "Свети Никола - Никољдан"))
  "Српске славе.")

(provide 'serbia-holidays)

;;; serbia-holidays.el ends here
