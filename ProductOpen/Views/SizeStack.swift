//
//  SizeStack.swift
//  ProductOpen
//
//  Created by Гурген on 12.10.2021.
//

import UIKit

protocol MenuStackDelegate {
    func changeMenu(index: Int)
}

class SizeStack: UIStackView {
    var delegate: MenuStackDelegate?
    
    var buttonImages: [UIImage?] = [UIImage(named: "xs"), UIImage(named: "s"), UIImage(named: "m"), UIImage(named: "l")]
    
    var isBlocked: Bool = false
    private var currentPosition: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        axis = .horizontal
        alignment = .bottom
        spacing = 20
        distribution = .fillEqually
        
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
        for (index, image) in buttonImages.enumerated() {
            let button = createButton(image: image, index: index)
            addArrangedSubview(button)
        }
    }
    
    private func createButton(image: UIImage?, index: Int) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        
        button.backgroundColor = .clear
        button.tag = index
        button.addTarget(self, action: #selector(clickMenuTitle), for: .touchUpInside)
        return button
    }
    
    @objc func clickMenuTitle(_ sender: UIButton) {
        guard !isBlocked else { return }
        currentPosition = sender.tag
        delegate?.changeMenu(index: sender.tag)
    }
    
    func forceUpdatePosition(_ index: Int) {
        currentPosition = index
    }
}
