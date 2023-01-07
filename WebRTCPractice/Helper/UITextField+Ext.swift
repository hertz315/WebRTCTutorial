//
//  UITextField+Ext.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/7/23.
//

import Foundation
import UIKit

extension UITextField {
    // textField 자체에 왼쪽 뷰가 존재한다 leftView는 기본적으로는 보이지 않는 모드로 되어 있다. 그래서 우리는 leftView를 항상 나타내서 padding 효과를 내도록 하자.
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
