//
//  InputTableViewCell.swift
//  Hazzle
//
//  Created by 이지원 on 2020/10/27.
//

import UIKit
import Then
import SnapKit

class InputTableViewCell: UITableViewCell {
    
    // variables
    static let cellIdentifier: String = "goalImageCell"
    
    // UI Components
    let descriptionLabel = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.text = "습관"
    }
    
    let titleTextField = UITextField().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "습관을 적어주세요."
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        if selected {
            self.titleTextField.becomeFirstResponder()
        }
    }
    
    private func setConstraint() {
        self.addSubview(titleTextField)
        
        titleTextField.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview()
            $0.height.equalTo(40)
        }
    }
    
    private func setConstraint2() {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [descriptionLabel, titleTextField])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.contentMode = .scaleAspectFit
        self.addSubview(stackView)
        
        stackView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalToSuperview().offset(10)
        }
    }
}
