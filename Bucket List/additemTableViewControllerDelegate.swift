//
//  additemTableViewControllerDelegate.swift
//  Bucket List
//
//  Created by Jihun Kang on 1/12/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import Foundation

protocol addItemTableViewControllerDelegate: class {
    func itemSaved(by controller: addItemTableViewController, with text: String, at indexPath: NSIndexPath? )
    func cancelButtonPressed(by controller: addItemTableViewController)
}
