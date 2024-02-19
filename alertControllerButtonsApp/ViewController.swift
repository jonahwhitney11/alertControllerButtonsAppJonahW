//
//  ViewController.swift
//  alertControllerButtonsApp
//
//  Created by Jonah Whitney on 2/19/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Warning!", message: "The apple juice is fermenting!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Cider?", style: .default, handler: { action -> Void in
            self.labelResult.text = "Thats cider baby."
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {action -> Void in self.labelResult.text = "Canel the cider."})
        
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler: {action -> Void in self.labelResult.text = "Pour out the juice."})
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        self.present(alert, animated: true, completion: nil)
    }
}

