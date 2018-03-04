//
//  DetailsController.swift
//  Przypomnienia
//
//  Created by Student on 15.11.2017.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class DetailsController: UIViewController {

    @IBOutlet weak var text: UITextField!
    

    @IBOutlet weak var przelacznik: UISwitch!
    @IBOutlet weak var desc: UITextView!
    var delegat:DetailsProtocol?
    
    @IBAction func clicked(_ sender: Any) {
        //Wcisniete ok
        //dismiss VC
        wpis?.tytul = text.text!
        wpis?.opis = desc.text!
        wpis?.isActive = przelacznik.isOn;
        delegat?.zapisz(indeks: indeks!, wpis: wpis!)
        self.dismiss(animated: true, completion: nil)
        
    }
    var indeks:Int?
    var wpis:Wpis?
    
    
   
    override func viewWillAppear(_ animated: Bool) {
        
        self.text.text = wpis?.tytul
        self.desc.text = wpis?.opis
        self.przelacznik.isOn = wpis!.isActive
        
        // TUtaj uzupełniamy pola tekstowe z Wpisu
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidDisappear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
