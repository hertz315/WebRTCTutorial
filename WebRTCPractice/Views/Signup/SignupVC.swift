//
//  singupViewController.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/6/23.
//

import Foundation
import UIKit

class SignupVC: UIViewController {
    
    // MARK: - Properties
    let signupView = SignupView(title: "회원가입")
    
    // MARK: - loadView
    override func loadView() {
        super.loadView()
        view = signupView
    }
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // 댈리게이트 채택, target action 정의
        signupView.setAction(textFieldDelegate: self, target: self, action: #selector(getStart))
        
        // 닉네임 텍스트 필드를 최초 응답자로 설정
        signupView.nickNameTextField.becomeFirstResponder()
    }
    
    @objc func getStart() {
        print("getStart - Tapped")
        // 화면이동 -> HomeVC
        
        
    }
    
    
}

extension SignupVC: UITextFieldDelegate {
    
    // 텍스트필드의 내용이 변경될때마다 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.layer.borderWidth = 1.0
        
        // 텍스트필드 글자수로 보더 변경
        if textField.text!.count < 3 {
            textField.layer.borderColor = UIColor.red.cgColor
        } else if textField.text!.count >= 3, textField.text!.count < 10 {
            textField.layer.borderColor = UIColor.green.cgColor
        }
        
        // 텍스트필드 인풋 길이 제한 로직
        let newLength = textField.text!.count + string.count - range.length
        
        if newLength > 10 {
            return false
        }
        
        return true
    }
    
    // 텍스트 필드의 리턴키가 눌러졌을때 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // passwordTextField를 응답객체로 지정
        signupView.passwordTextField.becomeFirstResponder()

        // 텍스트 필드를 최초 응답 객체에서 해제
        textField.resignFirstResponder()
        
        return true
    }
    
    
    
    
    
}

// MARK: - Preview
import SwiftUI

struct SignupVCRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = SignupVC
    
    func makeUIViewController(context: Context) -> SignupVC {
        return SignupVC()
    }
    
    func updateUIViewController(_ uiViewController: SignupVC, context: Context) {
    }
}

@available(iOS 13.0.0, *)
struct SignupVCPreview: PreviewProvider {
    static var previews: some View {
        SignupVCRepresentable()
    }
}

