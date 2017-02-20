//
//  SettingsViewController.swift
//  Tipz
//
//  Created by Enzo Ames on 12/18/16.
//  Copyright © 2016 Enzo Ames. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

     @IBOutlet weak var defaultTip: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        
        defaultTip.selectedSegmentIndex = defaults.integer(forKey: "tip")
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

   
    
    @IBAction func ChangeDefault(_ sender: Any)
    {
        let index = defaultTip.selectedSegmentIndex
        
        let defaults = UserDefaults.standard
        
        defaults.set(index, forKey: "tip")
        
        defaults.synchronize()
        
    }
    
    
}


