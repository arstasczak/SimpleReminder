//
//  ViewController.swift
//  Przypomnienia
//
//  Created by Student on 15.11.2017.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DetailsProtocol
{
    var przypomnienia = [Wpis]()
    
    func zapisz(indeks: Int, wpis: Wpis) {
        przypomnienia[indeks] = wpis
    }
    //var ilosc = 5
    @IBAction func dodajPrzypomnienie(_ sender: Any) {
        //ilosc += 1
        przypomnienia.append(Wpis())
        //dodac nowy wpis do tablicy przypomnienia
        myTableVierw.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return przypomnienia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        let c  = tableView.dequeueReusableCell(withIdentifier: "komorka", for: indexPath) as? MyCell
        c?.setup(wpis: przypomnienia[indexPath.row])
        return c!
        
    }
    @IBOutlet weak var obrazek: UIImageView!
    
    @IBOutlet weak var myTableVierw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        myTableVierw.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let c = sender as? MyCell
        let dvc = segue.destination as? DetailsController
        dvc?.indeks = myTableVierw.indexPathForSelectedRow?.row
        dvc?.delegat = self;
        dvc?.wpis = przypomnienia[dvc!.indeks!]
        
        //wpis do modyfikowania
        
        
    }


}

