//
//  ViewController.swift
//  TInyToyTank
//
//  Created by Amirhossein Akbari on 2023-07-16.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    var tankAnchor: TinyToyTank._TinyToyTank?
    @IBOutlet var arView: ARView!
    @IBAction func tankRightPressed(_ sender: Any) {
        tankAnchor!.notifications.tankRight.post()
    }
    @IBAction func tankLeftPressed(_ sender: Any) {
        tankAnchor!.notifications.tankLeft.post()
    }
    @IBAction func tankForwardPressed(_ sender: Any) {
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func cannonFirePressed(_ sender: Any) {
        tankAnchor!.notifications.cannonFire.post()
    }
    @IBAction func turretRightPressed(_ sender: Any) {
        tankAnchor!.notifications.turretRight.post()
    }
    @IBAction func turrestLeftPressed(_ sender: Any) {
        tankAnchor!.notifications.turretLeft.post()
    }
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
         // Load the "Box" scene from the "Experience" Reality File
       // let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
}
