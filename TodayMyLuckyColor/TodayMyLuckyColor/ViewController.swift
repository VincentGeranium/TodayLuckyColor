//
//  ViewController.swift
//  TodayMyLuckyColor
//
//  Created by 김광준 on 08/10/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let selectBtn = UIButton(type: .custom)
    let colorLable = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addColorLable()
        btnConfigure()
        addButton()
        
        
    }
    
    private func addColorLable() {
        self.view.addSubview(colorLable)
        
        colorLable.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        let labelBottomConstant = (view.bounds.size.height - (view.bounds.size.height - 100))
        
        let labelTop: NSLayoutConstraint
        labelTop = colorLable.topAnchor.constraint(equalTo: guide.topAnchor)
        
        let labelLeading: NSLayoutConstraint
        labelLeading = colorLable.leadingAnchor.constraint(equalTo: guide.leadingAnchor)
        
        let labelTrailing: NSLayoutConstraint
        labelTrailing = colorLable.trailingAnchor.constraint(equalTo: guide.trailingAnchor)
        
        let labelBottom: NSLayoutConstraint
        labelBottom = colorLable.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -(labelBottomConstant))
        
        labelTop.isActive = true
        labelLeading.isActive = true
        labelTrailing.isActive = true
        labelBottom.isActive = true
        
    }
    
    private func addButton() {
        self.view.addSubview(selectBtn)
        
        selectBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        
        
        let btnTop: NSLayoutConstraint
        btnTop = selectBtn.topAnchor.constraint(equalTo: colorLable.bottomAnchor)
        
//        let btnCenterY: NSLayoutConstraint
//        btnCenterY = selectBtn.centerYAnchor.constraint(equalTo: guide.centerYAnchor)
        
        let btnLeading: NSLayoutConstraint
        btnLeading = selectBtn.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20)
        
        let btnTrailing: NSLayoutConstraint
        btnTrailing = selectBtn.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20)
        
        let btnBottom: NSLayoutConstraint
        btnBottom = selectBtn.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        
        btnTop.isActive = true
//        btnCenterY.isActive = true
        btnLeading.isActive = true
        btnTrailing.isActive = true
        btnBottom.isActive = true
    }
    
    private func btnConfigure() {
        selectBtn.setTitle("touch", for: .normal)
        selectBtn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        selectBtn.setTitleColor(.red, for: .normal)
//        selectBtn.backgroundColor = .white
        selectBtn.addTarget(self, action: #selector(didTppedSelectBtn(_:)), for: .touchUpInside)
    }
    
    @objc private func didTppedSelectBtn(_ sender: UIButton) {
        var randomNumber = (arc4random_uniform(3) + 1)
        
        if ColorList.greenColor.colorNumber == randomNumber {
            print("green, \(randomNumber)")
        } else if ColorList.redColor.colorNumber == randomNumber {
            print("red, \(randomNumber)")
        }
        
    }
    


}

