//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by limyunhwi on 2021/12/03.
//

import UIKit
//delegate pattern을 사용하여 설정 화면에서 메인화면으로 데이터 전달
protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}


class SettingViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var btnYellow: UIButton!
    @IBOutlet weak var btnPurple: UIButton!
    @IBOutlet weak var btnGreen: UIButton!
    @IBOutlet weak var btnBlack: UIButton!
    @IBOutlet weak var btnBlue: UIButton!
    @IBOutlet weak var btnOrange: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //선택된 버튼의 alpha값을 1로, 선택되지 않은 버튼의 alpha 값을 0.2로 설정한다.
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        //한 액션함수에 여러 버튼을 설정할 경우 sender 파라미터를 통해 어떤 버튼이 tap되었는지 알 수 있다.
        //버튼이 tap된 경우 sender 파라미터에 해당 버튼이 인스턴스로 전달되기 때문에 어떤 버튼이 선택되었는지 알 수 있다.
        //버튼이 선택될 때마다 color를 변수에 저장한다.
        
        if sender == self.btnYellow {
            self.textColor = .yellow
        }else if sender == self.btnPurple {
            self.textColor = .purple
        }else {
            self.textColor = .green
        }
        
        self.changeTextColor(color: self.textColor)
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        //한 액션함수에 여러 버튼을 설정할 경우 sender 파라미터를 통해 어떤 버튼이 tap되었는지 알 수 있다.
        //버튼이 tap된 경우 sender 파라미터에 해당 버튼이 인스턴스로 전달되기 때문에 어떤 버튼이 선택되었는지 알 수 있다.
        //버튼이 선택될 때마다 color를 변수에 저장한다.
        
        if sender == self.btnBlack {
            self.backgroundColor = .black
        }else if sender == self.btnOrange {
            self.backgroundColor = .orange
        }else {
            self.backgroundColor = .blue
        }
        self.changeBackgroundColor(color: backgroundColor)
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
    }
    
    private func changeTextColor(color: UIColor) {
        //삼항 연산자 사용
        self.btnYellow.alpha = color == UIColor.yellow ? 1 : 0.2
        self.btnPurple.alpha = color == UIColor.purple ? 1 : 0.2
        self.btnGreen.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColor(color: UIColor) {
        //삼항 연산자 사용
        self.btnBlue.alpha = color == UIColor.blue ? 1 : 0.2
        self.btnOrange.alpha = color == UIColor.orange ? 1 : 0.2
        self.btnBlack.alpha = color == UIColor.black ? 1 : 0.2
    }
}
