import UIKit

class MoreTableViewCell: UITableViewCell {
    
    @IBOutlet weak var informLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
    }

    func setup(with experience: Experience) {
        titleLabel.text = experience.name
        informLabel.text = experience.about
    }
}
