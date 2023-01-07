//
//  SignupView.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/6/23.
//

import UIKit
import SnapKit

class SignupView: UIView {

    private var viewTitle: String = ""
    
    // MARK: - Properties
    // signupLabel
    lazy var signupLabel: UILabel = {
        let label = UILabel()
        label.text = self.viewTitle
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    // nickNameLabel
    lazy var nickNameLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임"
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    // required Image == *
    lazy var nickNameRequireImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "required")
        // 비율과 상관없이 UIImageView 사이즈에 이미지를 맞추는 겁니다
        image.contentMode = .scaleToFill
        // 그림자
        image.layer.shadowOffset = CGSize(width: 5, height: 5)
        image.layer.shadowOpacity = 0.7
        image.layer.shadowRadius = 5
        image.layer.shadowColor = UIColor.gray.cgColor
        return image
    }()
    
    // nickName horizontal StackView
    lazy var nickNameStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.spacing = 3
        return stackView
    }()
    
    // nickName TextField
    lazy var nickNameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.934, green: 0.938, blue: 0.946, alpha: 1)
        textField.addLeftPadding()
        textField.placeholder = "이름을 입력해 주세요."
        textField.layer.cornerRadius = 8
        // 키보드 타입 여부
        textField.keyboardType = .default
        // 대문자화 안함 여부
        textField.autocapitalizationType = .none
        // 맞춤법 검사 사용할지 여부를
        textField.spellCheckingType = .yes
        // 사용자가 텍스트를 입력해야 리턴키가 활성화됨
        textField.enablesReturnKeyAutomatically = true
        
        return textField
    }()
    
    // password Label
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    // required Image == *
    lazy var passwordRequireImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "required")
        // 비율과 상관없이 UIImageView 사이즈에 이미지를 맞추는 겁니다
        image.contentMode = .scaleToFill
        // 그림자
        image.layer.shadowOffset = CGSize(width: 5, height: 5)
        image.layer.shadowOpacity = 0.7
        image.layer.shadowRadius = 5
        image.layer.shadowColor = UIColor.gray.cgColor
        return image
    }()
    
    // passwordStackView
    lazy var passwordStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.spacing = 3
        return stackView
    }()
    
    // password TextField
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.934, green: 0.938, blue: 0.946, alpha: 1)
        textField.layer.cornerRadius = 8
        textField.addLeftPadding()
        textField.placeholder = "비밀번호를 입력해 주세요."
        textField.textContentType = .password
        textField.autocapitalizationType = .none
        textField.enablesReturnKeyAutomatically = true
        // 텍스트 비밀번호 타입
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var getStartButton: UIButton = {
        let button = UIButton()
        button.setTitle("시작하기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(red: 0.906, green: 0.911, blue: 0.922, alpha: 1)
        button.layer.cornerRadius = 12
        // 그림자
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 5
        button.layer.shadowColor = UIColor.gray.cgColor
        return button
    }()
    
    
    // MARK: - setup
    func setup() {
        addViews()
    }
    
    // MARK: - addSubView
    func addViews() {
        // signup Label
        addSubview(signupLabel)
        
        // nickName StackView
        addSubview(nickNameStackView)
        nickNameStackView.addArrangedSubview(nickNameLabel)
        nickNameStackView.addArrangedSubview(nickNameRequireImage)
        
        // nickName TextField
        addSubview(nickNameTextField)
        
        // password StackView
        addSubview(passwordStackView)
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordRequireImage)
        
        // password TextField
        addSubview(passwordTextField)
        
        // getStartButton
        addSubview(getStartButton)
    }
    
    // MARK: - constraints
    func constraints() {
        // 온보딩 메인 라벨
        signupLabel.snp.makeConstraints { make in
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.top.equalTo(114)
        }
        
        // nickName horizontal Stack View
        nickNameStackView.snp.makeConstraints { make in
            make.top.equalTo(signupLabel.snp.bottom).offset(35)
            make.leading.equalTo(16)
        }
        
        // *
        nickNameRequireImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 5, height: 5))
        }
        
        // nickNameTextField
        nickNameTextField.snp.makeConstraints { make in
            make.top.equalTo(nickNameStackView.snp.bottom).offset(11)
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.size.height.equalTo(48)
        }
        
        // password horizontal StackView
        passwordStackView.snp.makeConstraints { make in
            make.top.equalTo(nickNameTextField.snp.bottom).offset(20)
            make.leading.equalTo(16)
        }
        
        passwordRequireImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 5, height: 5))
        }
        
        // password textField
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordStackView.snp.bottom).offset(11)
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.size.height.equalTo(48)
        }
        
        // getStartButton
        getStartButton.snp.makeConstraints { make in
            make.size.height.equalTo(48)
            make.leading.equalTo(16)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-64)
        }
        
    }
    
    // MARK: - Delegate, Button Target Action
    func setAction(textFieldDelegate: UITextFieldDelegate, target: Any, action: Selector) {
        self.nickNameTextField.delegate = textFieldDelegate
        self.passwordTextField.delegate = textFieldDelegate
        self.getStartButton.addTarget(target, action: action, for: .touchUpInside)
        
    }
    
    // MARK: - convenience init
    convenience init(title: String = "회원가입") {
        self.init(frame: .zero)
        self.viewTitle = title
        setup()
        constraints()
        backgroundColor = .white
        
    }
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Preview
import SwiftUI

struct SignupViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> SignupView {
        return SignupView()
    }
    
    func updateUIView(_ uiView: SignupView, context: Context) {
    }
    
    typealias UIViewType = SignupView
    
    
}

@available(iOS 13.0.0, *)
struct SignupViewPreview: PreviewProvider {
    static var previews: some View {
        SignupViewRepresentable()
    }
}
