//
//  AppTextView.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit

class AppTextView: UITextView {

    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = UIColor(named: "appInputFieldBackground")
        layer.cornerRadius = 16
        layer.borderWidth = 1
        layer.borderColor = UIColor(named: "appInputFieldBorder")?.cgColor
    }
}
