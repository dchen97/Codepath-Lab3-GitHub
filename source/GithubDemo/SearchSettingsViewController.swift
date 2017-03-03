//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Diana C on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController, SettingsPresentingViewControllerDelegate {
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var minStarLabel: UILabel!
    @IBOutlet weak var minStarSlider: UISlider!
    weak var delegate: SettingsPresentingViewControllerDelegate?

    var settings: GithubRepoSearchSettings?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minStarSlider.addTarget(self, action: #selector(SearchSettingsViewController.onSliderValueChange), for: UIControlEvents.valueChanged)
        
        // Do any additional setup after loading the view.
    }
    
    func onSliderValueChange() {
        let roundedValue = Int(roundf(minStarSlider.value))
        minStarLabel.text = "\(roundedValue)"
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

//    @IBAction func cancelButtonTapped(_ sender: Any) {
//        self.delegate?.didSaveSettings(settings: settings!)
//    }
//    @IBAction func saveButtonTapped(_ sender: Any) {
//        self.delegate?.didCancelSettings()
//    }
    
    func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
    }
    
    func saveButtonTapped(_ sender: Any) {
        settings?.minStars = Int(minStarSlider.value)
        self.delegate?.didSaveSettings(settings: settings!)
    }
    func didSaveSettings(settings: GithubRepoSearchSettings) {
        settings.minStars = Int(minStarSlider.value)
        print("Settings saved")
    }
    
    func didCancelSettings() {
        print("Settings cancelled")
    }
    
    
}
