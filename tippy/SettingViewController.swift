//
//  SettingViewController.swift
//  tippy
//
//  Created by Amanda Jiang on 3/13/17.
//  Copyright © 2017 Amanda Jiang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tipDefaultController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func setDefault(_ sender: Any) {
        let dafaults = UserDefaults.standard
        dafaults.set(tipDefaultController.selectedSegmentIndex, forKey: "rate")
        dafaults.synchronize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let index = UserDefaults.standard.integer(forKey: "rate")
        tipDefaultController.selectedSegmentIndex = index
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
