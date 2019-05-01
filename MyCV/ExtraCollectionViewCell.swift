import UIKit

class ExtraCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageExtra: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = contentView.frame.size.width/2
        contentView.layer.masksToBounds = true
        contentView.backgroundColor = UIColor.newOrange
    }

    func setup(with category: Categories ) {
        labelTitle.text = category.title
        imageExtra.image = category.image
    }
}
