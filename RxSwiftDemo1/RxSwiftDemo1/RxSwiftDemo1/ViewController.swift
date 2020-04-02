//
//  ViewController.swift
//  RxSwiftDemo1
//
//  Created by 侯森魁 on 2020/4/2.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
fileprivate let initTask2:Void  = {
    print("initTask2----")
}()
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let observable = Observable<Int>.create { observer  in
            observer.onNext(11)
            observer.onNext(22)
            observer.onNext(33)
            observer.onCompleted()
            observer.onNext(44)
            return Disposables.create()
        }
        observable.subscribe{ event in
            switch event {
            case .next(let element):
                print("next",element)
            case .error(let error):
                print("error",error)
            case .completed:
                print("completed")
            }
        }

    }


}

