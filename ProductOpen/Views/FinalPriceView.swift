//
//  FinalPriceView.swift
//  ProductOpen
//
//  Created by Гурген on 12.10.2021.
//

import UIKit

class FinalPriceView: UIView {

    let finalPriceStaticLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 10)
        label.text = "Итоговая цена"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rubleSymbol: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "coin")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 16)
        label.text = "100"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let payButton: UIButton = {
       let button = UIButton()
        button.setTitle("Оплатить", for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        addConstraint()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        
        backgroundColor = UIColor(red: 229/255, green: 133/255, blue: 75/255, alpha: 1.0)
        layer.cornerRadius = 20
        
        addSubview(finalPriceStaticLabel)
        addSubview(rubleSymbol)
        addSubview(priceLabel)
        addSubview(payButton)
    }
    
    private func addConstraint() {
        finalPriceStaticLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2).isActive = true
        finalPriceStaticLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13).isActive = true
        finalPriceStaticLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -13).isActive = true
        
        rubleSymbol.topAnchor.constraint(equalTo: finalPriceStaticLabel.bottomAnchor, constant: 10).isActive = true
        rubleSymbol.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13).isActive = true
        rubleSymbol.widthAnchor.constraint(equalToConstant: 20).isActive = true
        rubleSymbol.heightAnchor.constraint(equalToConstant: 20).isActive = true

        priceLabel.centerYAnchor.constraint(equalTo: rubleSymbol.centerYAnchor).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: rubleSymbol.trailingAnchor, constant: 10).isActive = true

        payButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13).isActive = true
        payButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -13).isActive = true
        payButton.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20).isActive = true
    }
    
}
