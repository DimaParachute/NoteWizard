//
//  NoteCreatingViewController.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit
import SnapKit

final class NoteCreatingViewController: UIViewController {
    
    // MARK: - Dependencies
    
    let viewModel: INoteCreatingViewModel
    
    private lazy var rightBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(systemItem: .save)
        return button
    }()
    
    private lazy var titleTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "Title"
        return label
    }()
    
    private lazy var titleTextField: AppTextField = {
        let textField = AppTextField()
        return textField
    }()
    
    private lazy var textTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.text = "Text"
        return label
    }()
    
    private lazy var textTextView: AppTextView = {
        let textView = AppTextView()
        return textView
    }()
    
    // MARK: - ViewController Lifecycle
    
    init(viewModel: INoteCreatingViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = .systemBackground
        setupView()
    }
    
    // MARK: - Private
    
    private func setupView() {
        title = "Make your note!"
        navigationItem.rightBarButtonItem = rightBarButton
        setupTitleTitleLabel()
        setupTitleTextField()
        setupTextTitleLabel()
        setupTextTextView()
    }
    
    private func setupTitleTitleLabel() {
        view.addSubview(titleTitleLabel)
        
        titleTitleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
            $0.leading.equalToSuperview().inset(16)
        }
    }
    
    private func setupTitleTextField() {
        view.addSubview(titleTextField)
        
        titleTextField.snp.makeConstraints {
            $0.top.equalTo(titleTitleLabel.snp.bottom).offset(8)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(52)
        }
    }
    
    private func setupTextTitleLabel() {
        view.addSubview(textTitleLabel)
        
        textTitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleTextField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().inset(16)
        }
    }
    
    private func setupTextTextView() {
        view.addSubview(textTextView)
        
        textTextView.snp.makeConstraints {
            $0.top.equalTo(textTitleLabel.snp.bottom).offset(8)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(16)
        }
    }
}
