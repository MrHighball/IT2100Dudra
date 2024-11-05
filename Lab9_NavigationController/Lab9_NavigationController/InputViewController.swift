import UIKit

class InputViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var addressLine1TextField: UITextField!
    @IBOutlet weak var addressLine2TextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var zipTextField: UITextField!

    // MARK: - Actions
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        // Trigger segue to SummaryViewController
        performSegue(withIdentifier: "showSummary", sender: self)
    }

    // MARK: - Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSummary" {
            if let summaryVC = segue.destination as? SummaryViewController {
                // Passing user data to the summary view controller
                summaryVC.firstName = firstNameTextField.text
                summaryVC.middleName = middleNameTextField.text
                summaryVC.lastName = lastNameTextField.text
                summaryVC.addressLine1 = addressLine1TextField.text
                summaryVC.addressLine2 = addressLine2TextField.text
                summaryVC.city = cityTextField.text
                summaryVC.state = stateTextField.text
                summaryVC.zip = zipTextField.text
            }
        }
    }
}
