//
//  UpComingMovieViewController.swift
//  UpcomingMovieCGVUsingPlist
//
//  Created by AST-iMac-0015 on 6/29/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import UIKit

class UpComingMovieViewController: UIViewController {
    
    @IBOutlet weak var movieImage: UIImageView!

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieGenre: UILabel!
    @IBOutlet weak var movieLength: UILabel!
    @IBOutlet weak var movieOpenDate: UILabel!
    var index: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        var tenphim = [String]()
        var theloai = [String]()
        var thoiluong = [String]()
        var khoichieu = [String]()
        var imageurl = [String]()
        
        let moviePath = NSBundle.mainBundle().pathForResource("PropertyList", ofType: "plist")
        let arrayOfArray = NSArray(contentsOfFile: moviePath!)!
        for array in arrayOfArray{
            for dict in (array as! NSArray) {
            tenphim.append(dict.objectForKey("tenphim") as! String)
            theloai.append(dict.objectForKey("theloai") as! String)
            thoiluong.append(dict.objectForKey("thoiluong") as! String)
            khoichieu.append(dict.objectForKey("khoichieu") as! String)
            imageurl.append(dict.objectForKey("imageurl") as! String)
            }
        movieName.text = tenphim[index]
        movieGenre.text = theloai[index]
        movieLength.text = thoiluong[index]
        movieOpenDate.text = khoichieu[index]
        if let url  = NSURL(string: imageurl[index]),
                data = NSData(contentsOfURL: url)
            {
                movieImage.image = UIImage(data: data)
            }
            

        

    
        
        // Do any additional setup after loading the view.
    }
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
