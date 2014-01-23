## cycript utilities

A very basic set of utilities to help with tweak development

### Installation

```
$ curl -s https://raw.github.com/evanlucas/cycript_utils/master/install.sh | sh
```

### Usage

```
$ cycript -p SpringBoard
cy# require('com/evanlucas/utils')
cy# utils.iconController
// => #"<SBIconController: 0x125d35550>"

cy# utils.dock
// => #"<SBDockIconListView 0x125e26f00: Model = <SBDockIconListModel: 0x17024fcc0; 4 icons; folder = <SBRootFolder: 0x1700d6180>>>"

cy# utils.dockModel
// => #"<SBDockIconListModel: 0x17024fcc0; 4 icons; folder = <SBRootFolder: 0x1700d6180>>"

cy# utils.getFolderDetails()
// if no folder is open
// => 'A folder must be open'

// if a folder is open
// => {
// =>   topIconInset:26,
// =>   bottomIconInset:8,
// =>   sideIconInset:26,
// =>   iconRowsForSpacingCalculation:3,
// =>   iconColumnsForCurrentOrientation:3,
// =>   verticalIconPadding:16,
// =>   horizontalIconPadding:36,
// =>   iconsInRowForSpacingCalculation:3,
// =>   iconLocation:5
// => }

cy# utils.notifyPost(<notification_name>)
// => true
```
