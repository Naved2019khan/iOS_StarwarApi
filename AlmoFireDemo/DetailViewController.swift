//
//  DetailViewController.swift
//  AlmoFireDemo
//
//  Created by Naved Khan on 10/05/23.
//

import UIKit
import Alamofire

class DetailViewController: UIViewController {
    @IBOutlet weak var data1: UILabel!
    @IBOutlet weak var data2: UILabel!
    var data : Film? = nil
    var listData : [Starship] = []
    @IBOutlet weak var data3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        display()
//        fetchList()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        data2.sizeToFit()
    }

}
extension DetailViewController {
    func display()
    {

        data1.text = data?.title
        data2.text = data?.openingCrawl
        data3.text = data?.releaseDate
    }
}

