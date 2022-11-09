//
//  ViewController.swift
//  ConsumoAPI
//
//  Created by MacBookMBA5 on 04/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var results = [ResultsStats]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            self.tableView.reloadData()
        }
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = results[indexPath.row].email.capitalized
        return cell
    }
    
    
    
    func downloadJSON(completed: @escaping () -> ()){
        let url = URL(string: "https://randomuser.me/api/")
        URLSession.shared.dataTask(with: url!){ (data,response,error) in
            if error == nil{
                do{
                    self.results = try JSONDecoder().decode([ResultsStats].self, from: data!)
                    DispatchQueue.main.async{
                        completed()
                    }
                }catch{
                    print("JSON Error")
                }
            }
        }.resume()
    }
}

