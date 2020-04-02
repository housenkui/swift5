//
//  ViewController1.swift
//  RxSwiftDemo1
//
//  Created by 侯森魁 on 2020/4/2.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bag = DisposeBag()
            
        // Do any additional setup after loading the view.
        let observable = Observable<Int>.timer(.seconds(2), period: .seconds(1), scheduler: MainScheduler.instance)

        observable.subscribe(onNext:{ element in
                   print("next",element)
               }, onError: { error in
                   print("error",error)
               }, onCompleted: {
                   print("completed")
            }).dispose()
        
        let observable1 = Observable<Int>.timer(.seconds(2), period: .seconds(1), scheduler: MainScheduler.instance)

               observable.subscribe(onNext:{ element in
                          print("next",element)
                      }, onError: { error in
                          print("error",error)
                      }, onCompleted: {
                          print("completed")
                   }).disposed(by: bag)
    }
    

   let str = """
    每当Observable被订阅时，都会返回一个Disposable实例，当调用Disposable的dispose，就相当于取消订阅、
    """

}
