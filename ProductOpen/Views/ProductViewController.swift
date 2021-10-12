//
//  ProductViewController.swift
//  ProductOpen
//
//  Created by Гурген on 12.10.2021.
//

import UIKit

class ProductViewController: UIViewController {
    
    private let backgroundImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = #imageLiteral(resourceName: "background")
        imageview.contentMode = .scaleAspectFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    private let blurView: BlurEffectView = {
       let view = BlurEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let typeProductLabel: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 18)
        label.text = "Тип товара"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 24)
        label.text = "Наименование товара"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let sizeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 16)
        label.text = "Размер"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sizeStack = SizeStack()
    
    private let priceStaticLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 14)
        label.text = "Цена товара"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let rubleSymbol: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "coin")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let rubleSymbol2: UIImageView = {
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
    
    private let deliveryPriceStaticLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 14)
        label.text = "Цена доставки"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let deliveryPriceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 16)
        label.text = "100"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let countStaticLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 14)
        label.text = "Количество"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "minus"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let plusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 16)
        label.text = "100"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let finalPriceView = FinalPriceView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        addConstraints()
    }
    
    func configureUI() {
        view.addSubview(backgroundImageView)
        view.addSubview(blurView)
        blurView.contentView.addSubview(typeProductLabel)
        blurView.contentView.addSubview(productNameLabel)
        blurView.contentView.addSubview(sizeLabel)
        blurView.contentView.addSubview(sizeStack)
        blurView.contentView.addSubview(priceStaticLabel)
        blurView.contentView.addSubview(rubleSymbol)
        blurView.contentView.addSubview(priceLabel)
        blurView.contentView.addSubview(rubleSymbol2)
        blurView.contentView.addSubview(deliveryPriceStaticLabel)
        blurView.contentView.addSubview(deliveryPriceLabel)
        blurView.contentView.addSubview(countStaticLabel)
        blurView.contentView.addSubview(minusButton)
        blurView.contentView.addSubview(plusButton)
        blurView.contentView.addSubview(countLabel)
        blurView.contentView.addSubview(finalPriceView)
    }
    
    func addConstraints() {
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        blurView.centerYAnchor.constraint(equalTo: backgroundImageView.centerYAnchor).isActive = true
        blurView.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor).isActive = true
        blurView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        blurView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        typeProductLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        typeProductLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        typeProductLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 240).isActive = true
        
        productNameLabel.topAnchor.constraint(equalTo: typeProductLabel.bottomAnchor, constant: 5).isActive = true
        productNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        productNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        sizeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        sizeLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 31).isActive = true
        
        sizeStack.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 13).isActive = true
        sizeStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        priceStaticLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        priceStaticLabel.topAnchor.constraint(equalTo: sizeStack.bottomAnchor, constant: 23).isActive = true
        
        rubleSymbol.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        rubleSymbol.topAnchor.constraint(equalTo: priceStaticLabel.bottomAnchor, constant: 5).isActive = true
        
        rubleSymbol.widthAnchor.constraint(equalToConstant: 20).isActive = true
        rubleSymbol.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        priceLabel.leadingAnchor.constraint(equalTo: rubleSymbol.trailingAnchor, constant: 10).isActive = true
        priceLabel.centerYAnchor.constraint(equalTo: rubleSymbol.centerYAnchor).isActive = true
        
        deliveryPriceStaticLabel.leadingAnchor.constraint(greaterThanOrEqualTo: priceStaticLabel.trailingAnchor, constant: 10).isActive = true
        let deliveryPriceStaticLabelLeadingConstraint =  deliveryPriceStaticLabel.leadingAnchor.constraint(equalTo: priceLabel.trailingAnchor, constant: 30)
        deliveryPriceStaticLabelLeadingConstraint.priority = UILayoutPriority(rawValue: 100)
        deliveryPriceStaticLabelLeadingConstraint.isActive = true
        deliveryPriceStaticLabel.centerYAnchor.constraint(equalTo: priceStaticLabel.centerYAnchor).isActive = true
        
        rubleSymbol2.centerYAnchor.constraint(equalTo: rubleSymbol.centerYAnchor).isActive = true
        rubleSymbol2.leadingAnchor.constraint(equalTo: deliveryPriceStaticLabel.leadingAnchor).isActive = true
        
        deliveryPriceLabel.centerYAnchor.constraint(equalTo: rubleSymbol2.centerYAnchor).isActive = true
        deliveryPriceLabel.leadingAnchor.constraint(equalTo: rubleSymbol2.trailingAnchor, constant: 10).isActive = true
        
        countStaticLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        countStaticLabel.topAnchor.constraint(equalTo: rubleSymbol.bottomAnchor, constant: 20).isActive = true
        
        minusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        minusButton.topAnchor.constraint(equalTo: countStaticLabel.bottomAnchor, constant: 5).isActive = true
        minusButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        minusButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        countLabel.centerYAnchor.constraint(equalTo: minusButton.centerYAnchor).isActive = true
        countLabel.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 10).isActive = true
        
        plusButton.centerYAnchor.constraint(equalTo: minusButton.centerYAnchor).isActive = true
        plusButton.leadingAnchor.constraint(equalTo: countLabel.trailingAnchor, constant: 10).isActive = true
        
        finalPriceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        finalPriceView.widthAnchor.constraint(equalToConstant: 104).isActive = true
        finalPriceView.heightAnchor.constraint(equalToConstant: 97).isActive = true
        finalPriceView.topAnchor.constraint(equalTo: priceStaticLabel.topAnchor).isActive = true
    }
    
}

