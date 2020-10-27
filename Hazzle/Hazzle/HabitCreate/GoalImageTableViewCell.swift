//
//  GoalImageTableViewCell.swift
//  Hazzle
//
//  Created by 이지원 on 2020/10/27.
//

import UIKit
import Then
import SnapKit

class GoalImageTableViewCell: UITableViewCell {
    
    // variables
    static let cellIdentifier: String = "goalImageCell"
    
    // UI Components
    let goalImageView = UIImageView().then {
        $0.adjustsImageSizeForAccessibilityContentSizeCategory = false
        $0.backgroundColor = .brown
    }
    
    let button = UIButton().then {
        $0.adjustsImageSizeForAccessibilityContentSizeCategory = false
        $0.translatesAutoresizingMaskIntoConstraints = true
        $0.setTitle("사진 추가", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setStackView()
        setConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    private func setStackView() {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [goalImageView, button])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.contentMode = .center
        self.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
    }
    
    private func setConstraint() {
        self.goalImageView.snp.makeConstraints {
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.width.equalTo(self.goalImageView.snp.height).multipliedBy(1.0 / 1.0)
        }
        
    }
}
