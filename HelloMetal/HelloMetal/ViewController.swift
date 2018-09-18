//
//  ViewController.swift
//  HelloMetal
//
//  Created by Victor K Lee on 2018. 9. 18..
//  Copyright © 2018년 Victor K Lee. All rights reserved.
//

import Metal
import UIKit

class ViewController: UIViewController {
    var device: MTLDevice! //초기화 구문이 아닌 viewDidLoad에서 초기화할 것이므로 Optional 선언, 하지만 명백히 초기화 될 것이므로 implicitly unrapped optional로 선언하여 사용 편의성 제공
    
    override func viewDidLoad() {
        super.viewDidLoad()
        device = MTLCreateSystemDefaultDevice()
    }
}

