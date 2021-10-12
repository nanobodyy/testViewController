//
//  ProductViewController.swift
//  ProductOpen
//
//  Created by Гурген on 12.10.2021.
//

import UIKit

class ProductViewController: UIViewController {
    
    let backgroundImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = #imageLiteral(resourceName: "background")
        imageview.contentMode = .scaleAspectFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    let blurView: BlurEffectView = {
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
    
    let sizeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 16)
        label.text = "Размер"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sizeStack = SizeStack()
    
    let priceStaticLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Montserrat-Regular", size: 14)
        label.text = "Цена товара"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rubleSymbol: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "coin")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

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
        
    }
    
}

