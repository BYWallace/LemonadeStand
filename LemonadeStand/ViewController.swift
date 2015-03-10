//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Brett Wallace on 3/9/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var moneySupplyCount: UILabel!
    @IBOutlet weak var lemonSupplyCount: UILabel!
    @IBOutlet weak var iceCubeSupplyCount: UILabel!
    @IBOutlet weak var lemonPurchaseCount: UILabel!
    @IBOutlet weak var iceCubePurchaseCount: UILabel!
    @IBOutlet weak var lemonMixCount: UILabel!
    @IBOutlet weak var iceCubeMixCount: UILabel!
    
    var supplies = Supplies(aMoney: 10, aLemons: 1, aIceCubes: 1)
    let price = Price()
    
    var lemonsToPurchase = 0
    var iceCubesToPurchase = 0
    
    var lemonsToMix = 0
    var iceCubesToMix = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // IBActions
    @IBAction func purchaseLemonButtonPressed(sender: UIButton) {
    }
    
    @IBAction func purchaseIceCubeButtonPressed(sender: UIButton) {
    }
    
    @IBAction func unpurchaseLemonButtonPressed(sender: UIButton) {
    }

    @IBAction func unpurchaseIceCubeButtonPressed(sender: UIButton) {
    }
    
    @IBAction func mixLemonButtonPressed(sender: UIButton) {
    }
    
    @IBAction func mixIceCubeButtonPressed(sender: UIButton) {
    }
    
    @IBAction func unmixLemonButtonPressed(sender: UIButton) {
    }
    
    @IBAction func unmixIceCubePressed(sender: UIButton) {
    }
    
    @IBAction func startDayButtonPressed(sender: UIButton) {
    }
    
    // Helper functions
    
    func updateMainView() {
        moneySupplyCount.text = "$\(supplies.money)"
        lemonSupplyCount.text = "\(supplies.lemons) Lemons"
        iceCubeSupplyCount.text = "\(supplies.iceCubes) Ice Cubes"
        
        lemonPurchaseCount.text = "\(lemonsToPurchase)"
        iceCubePurchaseCount.text = "\(iceCubesToPurchase)"
        lemonMixCount.text = "\(lemonsToMix)"
        iceCubeMixCount.text = "\(iceCubesToMix)"
    }
    
    func showAlertWithText(header:String = "Warning", message:String) {
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

