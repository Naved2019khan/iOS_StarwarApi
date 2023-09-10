//
//  ViewController.swift
//  AlmoFireDemo
//
//  Created by Naved Khan on 08/05/23.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
            loadJsonData()

    }

//    var item : [Displayable] = []
    var f : [Film] = []
//    var d = [1]
    func loadJsonData()
      {

        AF.request("https://swapi.dev/api/films")
            .validate()
            .responseDecodable(of: Films.self ){ response in
                
            guard let films = response.value else {
                print("nothing")
                return
            }
                print("called")
                self.f = films.all
                self.secondCall()
                self.myTableView.reloadData()
                
         }
    }
    
    func secondCall(){
//        var stringArray = [String]()
        f.forEach{ it in
       
            thirdCall(s: it.starships)
//            print(it.starships.count , "  " ,it.starships)
        }

    }
    
    func thirdCall(s : [String]) {
        
        s.forEach{ api in
            AF.request(api)
                .validate()
                .responseDecodable(of: Starship.self ){ response in
                    
                guard let star = response.value else {
                    print("nothing")
                    return
                }
                    print("called",star)
                   
                    
             }
        }
        
    }
    var selected : Film?
}

    
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return f.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        let it = f[indexPath.row]
        cell.label1.text = it.title
        cell.label2.text  = String(it.id)
        return cell
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
   
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
//        vc.data = f[indexPath.row]
//     present(vc, animated: true, completion: nil)
//    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        vc.data = f[indexPath.row]
        present(vc, animated: true, completion: nil)
        return indexPath
    }

}

