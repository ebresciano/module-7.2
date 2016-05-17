//
//  DayListViewController.swift
//  TableView2
//
//  Created by Eva Marie Bresciano on 5/17/16.
//  Copyright © 2016 Module 7.2. All rights reserved.
//

import UIKit

class DayListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    // MARK: - Outlets
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var dayTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - ActionButtons
    
    @IBAction func addDayButton(sender: AnyObject) {
        if let name = dayTextField.text {
            let newDay = Day(name: name)
            DayController.sharedInstance.addDay(newDay)
            dayTextField.text = ""
            myTableView.reloadData()
        }
    }
    //MARK: - TableViewDataSourceMethods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DayController.sharedInstance.dayArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)
        let day = DayController.sharedInstance.dayArray[indexPath.row]
        cell.textLabel?.text = day.name
        return cell
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            let day = DayController.sharedInstance.dayArray[indexPath.row]
            DayController.sharedInstance.removeDay(day)
            myTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    func tableView(tableView: UITableView, HeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100.0
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetailSegue" {
            let detailViewController = segue.destinationViewController as? DetailViewController
            if let indexPath = myTableView.indexPathForSelectedRow {
               let day = DayController.sharedInstance.dayArray[indexPath.row]
                detailViewController?.day = day
            }
            
        }
     
        
        // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
}


