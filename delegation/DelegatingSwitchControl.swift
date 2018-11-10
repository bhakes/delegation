import UIKit

class DelegatingSwitchControl: UISwitch {
    
    @IBOutlet weak var delegate: SwitchControlDelegate? = nil
    
    @objc
    func valueChange() {
        delegate?.switchControl(self, didStateChangeTo: self.isOn)
    }
    
    func setup() {
        // Redirect target-action
        self.addTarget(self, action: #selector(valueChange), for: .touchUpInside)
    }
    
    // Required initializer
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // Most common entry point for convenience initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
}
