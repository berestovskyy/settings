Setting Up macOS Tahoe 26.1
===========================

System Settings > Trackpad
--------------------------

**Point & Click:**

* Set: Tracking speed: `8/10`
* Enable: Tap to click

System Settings > Displays
--------------------------

* Set: Resolution > Scaled: `Larger Text`

**Night Shift:**

* Set: Schedule: `Sunset to Sunrise`

System Settings > Keyboard
-----------------------------

* Set: Key repeat rate: `Fast`
* Set: Delay until repeat: `Short`
* Set: Turn keyboard backlight off after inactivity: `After 10 Seconds`

> To avoid accidental input source switches:

* Set: Press 🌐 key to: `Do nothing` (instead use `Control + Space` to switch the input)

> To use keyboard in dialogs:

* Enable: Keyboard navigation

**Keyboard Shortcuts...**

> To use `F11`:

* Disable: Mission Control > Show Desktop

> To avoid accidental quits from Safari:

In `App Shortcuts` add:

* Application: `Safari`
* Menu title: `Quit Safari`
* Keyboard shortcut: `Option + Command + Q`

> To use Writing Tools:

In `App Shortcuts` add:

* Application: All Applications
* Menu title: `Show Writing Tools`
* Keyboard shortcut: `Shift + Command + '`

> To use function keys:

* Enable: Function Keys > Use F1, F2, etc keys as standard function keys.

**Text Input > Edit...**

* `Polish`
* `Russian - PC`
* `Ukrainian`

* Configure: Spelling: `Set Up...`

**Back to Keyboard:**

* Enable: Dictation
* Configure: Dictation > Languages

Installing Dot Files
--------------------

* Terminal > Run `git` > Install command line developer tools
* Run: `git clone https://github.com/berestovskyy/settings.git`
* Run: `cd settings && make link-mac-dot-files`
* Restart the terminal.

> To fix `zsh compinit: insecure directories` message:

* Run `compaudit | xargs chmod g-w`

Installing Applications
-----------------------

* Run: `cd settings && make install-brew`
* Run: `cd settings && make install-mac-apps`
* Run: `autoload -Uz compinit && compinit`

Terminal Settings
-----------------

**General:**

* On startup, open new window with profile: `Homebrew`

**Profiles:**

* Select `Homebrew` and click `Default`

**Profiles > Homebrew > Text:**

* Font > Change... > `SF Mono Regular` > Size: `18pt`

**Profiles > Homebrew > Window:**

* Set: Columns: `90` Rows: `30`

**Profiles > Homebrew > Shell:**

* When the shell exits: `Close if the shell exited cleanly`

**Profiles > Homebrew > Keyboard:**

* Use Option as Meta key

> To map `Shift + F1` to `F11`:

* Double click `F11` key to edit > Key: `F1` Modifier: `Shift`
* Repeat above for `F12-F20` keys

System Settings > iCloud
------------------------

* Enable: Saved to iCloud > See All > iCloud Drive > Desktop & Documents Folders

System Settings > General > Time Machine
----------------------------------------

`Options` dialog:

* Exclude these items from backups: `~/tmp`

System Settings > Accessibility
-------------------------------

* Enable: Motor > Pointer Control > Trackpad Options > Use trackpad for dragging
* Set: Motor > Pointer Control > Trackpad Options > Dragging style: `Three Finger Drag`

System Settings > Menu Bar
--------------------------

* Set: Recent documents, applications, and servers: `15`
* Disable: Menu Bar Controls > Siri
* Disable: Menu Bar Controls > Spotlight
* Disable: Menu Bar Controls > Bluetooth
* Set: Menu Bar Controls > Sound: `Always Show`
* Enable: Menu Bar Controls > Weather

System Settings > Apple Intelligence & Siri
-------------------------------------------

* Set: Siri Requests > Keyboard shortcut: `Press 🌐 S`
* Enable: Extensions > ChatGPT > Use ChatGPT

System Settings > Desktop & Dock
--------------------------------

* Set: Dock > Magnification: `Large`
* Enable: Automatically hide and show the Dock
* Enable: Stage Manager

> For `Command + N` and `Command + T` to always work as expected:

* Set: Windows > Prefer tabs when opening documents: `never`

> To restore full screen windows:

* Disable: Windows > Close windows when quitting an application

System Settings > Spotlight
---------------------------

* Disable: Help Apple Improve Search

**Search Privacy...**

* Prevent Spotlight from searching these locations: `~/tmp`, `/Volumes`

System Settings > Wallpaper
---------------------------

* Set: Landscapes > Goa Beaches

System Settings > Sound
-----------------------

* Se: Input: MacBook Microphone: Input volume: `7/7`

System Settings > Lock Screen
-----------------------------

* Set: Turn display off on battery when inactive: `For 5 minutes`
* Set: Turn display off on power adapter when inactive: `For 10 minutes`

System Settings > Privacy & Security
------------------------------------

* Enable: Location Services > System Services > Details... > Show location icon in Control Center

System Settings > Touch ID & Password
-------------------------------------

* Add Fingerprint: right index, right thumb, left index.

System Settings > User & Groups
-------------------------------

**Current User:**

* Change icon
* Enable: Allow user to reset password using Apple Account

System Settings > Internet accounts
-----------------------------------

Add email accounts.

System Settings > Keyboard
-----------------------------

* Set: Key repeat rate: `Fast`
* Set: Delay until repeat: `Short`
* Set: Turn keyboard backlight off after inactivity: `After 10 Seconds`

> To avoid accidental input source switches:

* Set: Press 🌐 key to: `Do nothing` (instead use `Control + Space` to switch the input)

> To use keyboard in dialogs:

* Enable: Keyboard navigation

**Keyboard Shortcuts...**

> To use `F11`:

* Disable: Show Desktop > Show Desktop

> To avoid accidental quits from Safari:

In `App Shortcuts` add:

* Application: `Safari`
* Menu title: `Quit Safari`
* Keyboard shortcut: `Option + Command + Q`

> To use Writing Tools:

In `App Shortcuts` add:

* Application: All Applications
* Menu title: `Show Writing Tools`
* Keyboard shortcut: `Shift + Command + '`

> To use function keys:

* Enable: Function Keys > Use F1, F2, etc keys as standard function keys.

**Text Input > Edit...**

* `Polish`
* `Ukrainian`
* `Russian - PC`

* Configure: Spelling: `Set Up...`

**Back to Keyboard:**

* Enable: Dictation
* Configure: Dictation > Languages

System Settings > Trackpad
--------------------------

**Point & Click:**

* Set: Tracking speed: `7/10`
* Enable: Tab to click

System Settings > Printers & Scanners
-------------------------------------

Setup printers.

System Settings > General > Language & Region
---------------------------------------------

At the very end, remove all the `Preferred Languages` but `English (US)`

> To get the sign-in windows in English:

Safari > Settings > Privacy > Manage Website Data > Remove All: google

Finder Settings
---------------

* Enable: Right click on `Documents` > Add to Dock
* Go > `Home`, File > Add to sidebar
* Press `Command + Shift + Period` to show hidden files.

Safari Settings
---------------

**General:**

* Set: New tabs open with: `Empty Page`

**Advanced:**

> For `Responsive Design Mode` (`Control + Command + R`):

* Enable: Show features for web developers

> To show link URL:

* View > Show Status Bar

> To pin tabs:

* Navigate to Okta > Right Click > Pin Tab
* Navigate to Calendar > Right Click > Pin Tab

Dictionary Settings
-------------------

* Disable: UK
* Disable: UK Thesaurus
* French
* French-English
* German
* German-English
* Polis
* Polis-English
* Russian
* Russian-English
* Ukrainian-English

Wikipedia Languages:

* English
* Deutsch
* Fraçais
* Polski
* Русский
* Українська

Desktop Settings
----------------

* Right Click > `Use Stacks`

Remove from Dock:

* `Contacts`
* `Freeform`
* `Apple TV`
* `Keynote`
* `Numbers`
* `Pages`
* `Games`
* `App Store`
* `System Settings`

Keep in Dock:

* `Calculator`
* `Terminal`
* `Find My`
* `Visual Studio Code`

SSH Settings
------------

* Restore `~/.ssh` directory.

> To add ssh keys to the Keychain:

1. Run: `ssh-add --apple-use-keychain`
2. Add to `.ssh/config`:

    ```ssh
    Host *
      UseKeychain yes
      AddKeysToAgent yes
    ```

Visual Studio Code
------------------

Extensions:

* `Accentuate`
* `AsciiDoc` -- skip
* `Bazel`
* `C/C++` -- skip
* `C/C++ Extension Pack` -- skip
* `C/C++ Themes` -- skip
* `CMake` -- skip
* `CMake Tools` -- skip
* `Code Spell Checker`
* `Code LLDB` -- skip
* `Dependi`
* `Dev Containers`
* `ESLint`
* `Even Better TOML`
* `GitLens`
* `Hex Editor` -- skip
* `Jupiter Keymap` -- skip
* `Makefile Tools` -- skip
* `Markdown All in One`
* `Markdownlint`
* `Motoko`
* `pre-commit-vscode` -- skip
* `Remote - SSH`
* `rust-analyzer`
* `shell-format-rev`
* `TODO Highlight`
* `WebAssembly`
* `WIT IDL`

Right-click on status bar and disable:

* Source control sync
* GitLense Launchpad
* GitLense Current Line Blame
* Editor Indentation
* Editor Encoding
* Editor End of Line
* Dependi (Extension)
* Even Better TOML (Extension)

Right-click on side bar and disable:

* Remote Explorer
* Makefile
* GitLens
* Bazel

Mail Settings
-------------

**Fonts & Colors:**

* Set all font sizes: `14`

**Composing:**

* Set: Message Format: `Plain Text`

Messages Settings
-----------------

**General:**

* Set: Text size: `6/7`

**iMessage:**

* Enable: Enable Messages in iCloud
* Edit: You can be reached for messages at
* Start new conversations from: `email`

Notification Center Widgets
---------------------------

Click date and time in the top-right corner of the menu bar:

* Add: Calendar "Up next" widget 2x1
* Add: Weather "Forecast" widget 2x2
* Add: Clock "City I" NYC-5 widget 1x1
* Add: Stocks "Symbol" widgets 1x1

Desktop Widgets
---------------

Right-click on the Desktop > Edit Widgets:

* Add: Calendar "Month" widget 1x1
* Add: Clock "City I" widget 1x1
* Add: Calendar "Up next" widget 2x1
* Add: Weather "Forecast" widget 2x2 or 2x1

FaceTime Settings
-----------------

**General:**

* Edit: You can be reached for FaceTime at
* Start new calls from: `email`

Pushing Back the Changes
------------------------

To push the changes back:

```shell
% git remote rm origin
% git remote add origin git@github.com:berestovskyy/settings.git
% git push origin new-setup-branch
```
