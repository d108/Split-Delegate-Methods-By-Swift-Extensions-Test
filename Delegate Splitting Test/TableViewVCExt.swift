//
//  TableViewVCExt.swift
//  Delegate Splitting Test
//
//  Created by Daniel Zhang (張道博) on 5/4/15.
//  Copyright (c) 2015 ikiApps.com. All rights reserved.
//

import Foundation
import UIKit

extension TableViewController: UITableViewDataSource {

    public override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

}

extension TableViewController: UITableViewDelegate {

    func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell?
    {
        return nil
    }

}