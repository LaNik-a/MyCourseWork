//
//  GuideViewController.swift
//  EcoApplication
//
//  Created by Никита Ткаченко on 01.11.2020.
//

import UIKit

class GuideViewController: UIViewController {



    @IBAction func buttonClicked(_ sender: UIButton) {
        let childGuideVC = ChildGuideViewController()
        // Переход к другому контроллеру
        navigationController?.pushViewController(childGuideVC, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MainGuide"
       

        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
