## Delegate Method Splitting Between Objective-C and Swift

###### by Daniel Zhang (張道博)

This is a project used to test splitting delegate methods between Objective-C and Swift within a Swift extension that I wrote about in [Fishy Swift App Delegate Method Conflicts](http://blog.ikiapps.com/post/116314637137/fishy-swift-app-delegate-method-conflicts). The result is that the delegate methods of `UIApplicationDelegate` need to be either completely written in Objective-C or Swift and cannot be split across the two language using a Swift extension.

The following error is produced when attempting to split methods in the app delegate between Objective-C and Swift via a Swift extension where a single method is being implemented in Swift. The method is

* func application(application: UIApplication, didFinishLaunchingWithOptions: NSDictionary) -> Bool

The result error is

    Testing failed:
	Method 'application(_:didFinishLaunchingWithOptions:)' with Objective-C selector 'application:didFinishLaunchingWithOptions:' conflicts with previous declaration with the same Objective-C selector
	
Methods from two other delegate protocols are also split across Objective-C and Swift. These are

* UITableViewDataSource: func numberOfSectionsInTableView(tableView: UITableView) -> Int
* UITableViewDelegate: cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell?

Disabling the Swift implementation and reenabling the Objective-C implementation results in successful compilation where the two tableview delegate methods are implemented in Swift.

