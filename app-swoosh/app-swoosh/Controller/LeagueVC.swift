//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Vanessa Constant on 10/3/17.
//  Copyright © 2017 Vanessa Constant. All rights reserved.
//

import UIKit



class LeagueVC: UIViewController {

    var player : Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player ()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func MensBtn(_ sender: Any) {
        selectedLeague(LeagueName: "Mens")
    }
    
    @IBAction func WomensBtn(_ sender: Any) {
        selectedLeague(LeagueName: "Womens")
    }
    
    
    @IBAction func CoedBtn(_ sender: Any) {
        selectedLeague(LeagueName: "Coed")
    }
    
    func selectedLeague ( LeagueName: String){
        player.desiredLeague = LeagueName
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
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
