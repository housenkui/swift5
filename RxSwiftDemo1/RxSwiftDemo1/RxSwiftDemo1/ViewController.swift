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
enum SKError:Error {
    case test
}
class ViewController: UIViewController {
    @IBOutlet weak var lable: UILabel!
    let bag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let observable = Observable<Int>.create { observer  in
//            observer.onNext(11)
//            observer.onNext(22)
//            observer.onError(SKError.test)
//            observer.onNext(33)
//            observer.onCompleted()
//            observer.onNext(44)
//            return Disposables.create()
//        }
        
//        let observable  = Observable.just(1)
//        let observable  = Observable.of(1,2,3)
//        let observable  = Observable.from([1,2,3])
          let observable = Observable<Int>.timer(.seconds(2), period: .seconds(1), scheduler: MainScheduler.instance)
          let _ = observable.takeUntil(self.rx.deallocated).map{"数值是\($0)"}.bind(to: lable.rx.text)
//        observable.subscribe{ event in
//            switch event {
//            case .next(let element):
//                print("next",element)
//            case .error(let error):
//                print("error",error)
//            case .completed:
//                print("completed")
//            }
//        }
        observable.subscribe(onNext:{ element in
            print("next",element)
        }, onError: { error in
            print("error",error)
        }, onCompleted: {
            print("completed")
        },onDisposed: {
            print("onDisposed")
        }).disposed(by: bag)

    }
//Observable 可观察的
    
//Observer 观察员

}


