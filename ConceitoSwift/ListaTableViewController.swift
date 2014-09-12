//
//  ListaTableViewController.swift
//  ConceitoSwift
//
//  Created by Roberto Junior on 10/09/14.
//  Copyright (c) 2014 Roberto. All rights reserved.
//

import UIKit
import CoreData

class ListaTableViewController: UITableViewController {

    var meuArr : Array<AnyObject> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


    override func viewDidAppear(animated: Bool) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        let result = NSFetchRequest(entityName:"Lista")
        
        meuArr = context.executeFetchRequest(result, error: nil)!
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meuArr.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("CellDados") as UITableViewCell
        var data: NSManagedObject = meuArr[indexPath.row] as NSManagedObject
        cell.textLabel?.text = data.valueForKeyPath("nome") as? String
        var sobrenome = data.valueForKeyPath("sobrenome") as String
        var perfil = data.valueForKeyPath("perfil") as String
        cell.detailTextLabel?.text = "\(sobrenome) - Perfil: \(perfil)"
        
        return cell
    }
}
