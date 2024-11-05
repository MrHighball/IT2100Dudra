import UIKit

class SummaryViewController: UIViewController {
    // MARK: - Properties to Receive Data
    var firstName: String?
    var middleName: String?
    var lastName: String?
    var addressLine1: String?
    var addressLine2: String?
    var city: String?
    var state: String?
    var zip: String?

    // MARK: - Outlet for the Summary Label
    @IBOutlet weak var summaryLabel: UILabel!

    // MARK: - View Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayUserInfo()
    }

    // MARK: - Display User Info in the Summary Label
    func displayUserInfo() {
        summaryLabel.text = """
        Ship to:
        \(firstName ?? "") \(middleName ?? "") \(lastName ?? "")
        \(addressLine1 ?? "")
        \(addressLine2 ?? "")
        \(city ?? ""), \(state ?? "") \(zip ?? "")
        """
    }
}
