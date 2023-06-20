//
//  ViewController.swift
//  画面遷移-sample-app
//コードを使った二つの画面遷移方法
//https://qiita.com/tosh_3/items/e99b77372d8c0f38d98b
//  
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func seni1(_ sender: UIButton) {
        
        counter = counter + 1
        if counter == 2{
            self.performSegue(withIdentifier: "toNext", sender: nil)
            counter = 0
        }
    }
    
    
    @IBAction func seni2(_ sender: UIButton) {
        let storyboard: UIStoryboard = self.storyboard!
                let second = storyboard.instantiateViewController(withIdentifier: "nextv")
                self.present(second, animated: true, completion: nil)
    }
    
}

