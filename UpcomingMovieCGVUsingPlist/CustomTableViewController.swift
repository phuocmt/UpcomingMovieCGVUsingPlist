//
//  CustomTableViewController.swift
//  TableView
//
//  Created by AST-iMac-0015 on 6/27/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import UIKit


class CustomTableViewController: UIViewController {
  
    
    let movieName = ["Đẳng cấp thú cưng","Huyền thoại Tarzan" , "Thợ săn tiền thưởng" , "Alice ở xứ sở trong gương" , "Hoả ngục" , "Rouge one"]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        navigationItem.title = "Phim sắp chiếu"
        super.viewDidLoad()
        self.tableView.registerNib(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CustomTableViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieName.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell") as! CustomTableViewCell
        let row = indexPath.row
        cell.upComingMovieName.text = movieName[row]
        return cell
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let upComingMovieViewController = UpComingMovieViewController(nibName: "UpComingMovieViewController", bundle: nil)
        upComingMovieViewController.index = indexPath.row
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.navigationController?.pushViewController(upComingMovieViewController, animated: true)
        print(index)
    }
  
}