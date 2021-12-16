//
//  ViewController.swift
//  LEDBoard
//
//  Created by limyunhwi on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblContents: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.lblContents.textColor = .yellow
    }

    //세그웨이로 화면전환했기 때문에 prepare메서드 오버라이드. prepare메서드: 화면 전환 직전 호출
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //만약 segue.destination이 SettingViewController로 타입캐스팅이 되면 true
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self // SettingViewController의 delegate 위임받기
            
            settingViewController.textLED = self.lblContents.text
            settingViewController.textColor = self.lblContents.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black //null이면 .black 할당
        }
    }

}

extension ViewController: LEDBoardSettingDelegate {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        //옵셔널 바인딩
        if let text = text {
            self.lblContents.text = text
        }
        self.lblContents.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}
