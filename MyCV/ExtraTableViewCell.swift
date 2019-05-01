import UIKit

class ExtraTableViewCell: UITableViewCell {

    @IBOutlet weak var extraTextInform: UITextView!
    @IBOutlet weak var extraImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        extraTextInform.isScrollEnabled = false
        extraTextInform.dataDetectorTypes = UIDataDetectorTypes.all
    }
    
    func setup(with myInfo: MyInfo) {
        extraTextInform.text = myInfo.explanation
        extraImage.image = myInfo.photo
    }
}



