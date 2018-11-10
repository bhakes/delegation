

import UIKit

class ViewController: UIViewController, SwitchControlDelegate {
    

    @IBOutlet weak var labelForTargetAction: UILabel!
    
    @IBOutlet weak var labelForDelegation: UILabel!
    
    @IBAction func didChangeState(_ sender: UISwitch) {
        
        labelForTargetAction.text = sender.isOn ? "On" : "Off"
    }
    
    func switchControl(_ switchControl: DelegatingSwitchControl, didStateChangeTo state: Bool) {
        
        labelForDelegation.text = state ? "On" : "Off"
    }
}

