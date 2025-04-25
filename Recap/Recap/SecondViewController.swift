import UIKit

class SecondViewController: UIViewController {

    var inputedValue = ""

    @IBOutlet weak var inputedValueLabel: UILabel!
    @IBOutlet weak var oldValue: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Önceki değeri al
        let previousValue = UserDefaults.standard.string(forKey: "inputedValue") ?? "Henüz yok"

        // Label'lara değerleri ata
        oldValue.text = "Old Value: \(previousValue)"
        inputedValueLabel.text = "Inputed Value: \(inputedValue)"
        
        // Yeni değeri kaydet
        saveValue()
    }

    func saveValue() {
        UserDefaults.standard.set(inputedValue, forKey: "inputedValue")
    }
}
