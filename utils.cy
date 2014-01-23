var NotifyPost = dlsym(RTLD_DEFAULT, "notify_post")

// Post notification named _name_
// thanks limneos
exports.notifyPost = function(name) {
  return new Functor(NotifyPost, "i*")(name)
}

exports.iconController = [SBIconController sharedInstance]

exports.dock = [[SBIconController sharedInstance] dockListView]

exports.dockModel = [[[SBIconController sharedInstance] dockListView] model]

exports.getFolderDetails = function() {
  var f = [exports.iconController currentFolderIconList]
  if (!f) {
    return 'A folder must be open'
  }

  var o = {}
  o.topIconInset = [f topIconInset]
  o.bottomIconInset = [f bottomIconInset]
  o.sideIconInset = [f sideIconInset]
  o.iconRowsForSpacingCalculation = [f iconRowsForSpacingCalculation]
  o.iconColumnsForCurrentOrientation = [f iconColumnsForCurrentOrientation]
  o.verticalIconPadding = [f verticalIconPadding]
  o.horizontalIconPadding = [f horizontalIconPadding]
  o.iconsInRowForSpacingCalculation = [f iconsInRowForSpacingCalculation]
  o.iconLocation = [f iconLocation]
  return o
}

exports.thisList = [[SBIconController sharedInstance] currentRootIconList]

exports.thisFolder = [[SBIconController sharedInstance] currentFolderIconList]

