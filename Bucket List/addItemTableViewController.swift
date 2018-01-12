//
//  addItemTableViewController.swift
//  Bucket List
//
//  Created by Jihun Kang on 1/12/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class addItemTableViewController: UITableViewController {
    weak var delegate: addItemTableViewControllerDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
