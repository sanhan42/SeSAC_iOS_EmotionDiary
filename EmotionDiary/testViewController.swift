//
//  testViewController.swift
//  EmotionDiary
//
//  Created by 한상민 on 2022/07/12.
//

import UIKit

class testViewController: UIViewController {
    
    @IBOutlet weak var emotionFisrtLabel: UILabel!
    var emotionArray = [0,0,0,0,0,0,0,0,0]
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        firstButton.setImage(image, for: .normal)
        // let systemImage = UIImage(systemName: <#T##String#>) // 애플 시스템 심볼 사용
        // let literal = #imageLiteral(resourceName: "sesac_slime3")
        
        emotionFisrtLabel.text = setRandomNickname()
    }
    
    func setRandomNickname() -> String {
        let nickname = ["고래밤", "칙촉", "새우깡"]
        let select = nickname.randomElement()!
        return "저는 \(select)!"
    }
/*
    // 배경색, 레이블, 이미지를 튜플로 반환하는 함수
    func example() -> (UIColor,String, UIImage){
        let color:[UIColor] = [.yellow, .red, .blue]
        let images:[String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8"]
        
        return (color.randomElement()!, "고래밥", UIImage(named: images.randomElement()!)!)
    }
 */
    
// button의 tag 활용해서 구현
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        showAlertController()
        emotionArray[sender.tag] += 1
    }
    func showAlertController() {
        //1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .alert)
        // let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet) // 보통 action sheet에서는 타이틀과 메시지를 넣지 않고 많이 사용한다.
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소 버튼", style: .cancel)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default)
        let copy = UIAlertAction(title: "복사하기", style: .default)
        //3. 1번에 2번 추가 (버튼 추가)
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(ok)
        alert.addAction(cancel)
        //4.
        present(alert, animated: true, completion: nil)
    }
}
