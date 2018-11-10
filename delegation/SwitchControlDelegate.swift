
import Foundation
import UIKit

@objc
protocol SwitchControlDelegate {
    func switchControl(_ switchControl: DelegatingSwitchControl, didStateChangeTo state: Bool)
}
