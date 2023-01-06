//
//  SignupView.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/6/23.
//

import UIKit
import SnapKit

class SignupView: UIView {

    // MARK: - Properties
    lazy var signupLabel: UILabel = {
        let label = UILabel()
        label.text = "회원가입"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    // MARK: - setup
    func setup() {
        addViews()
    }
    
    // MARK: - addSubView
    func addViews() {
        addSubview(signupLabel)
    }
    
    // MARK: - constraints
    func constraints() {
        // 온보딩 메인 라벨
        signupLabel.snp.makeConstraints { make in
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.top.equalTo(114)
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        constraints()
        backgroundColor = .white
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
