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
    
    var metalLayer: CAMetalLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        device = MTLCreateSystemDefaultDevice()
        
        metalLayer = CAMetalLayer()
        metalLayer.device = device
        /* You set the pixel format to bgra8Unorm, which is a fancy way of saying “8 bytes for Blue, Green, Red, and Alpha, in that order — with normalized values between 0 and 1.” This is one of only two possible formats to use for a CAMetalLayer, so normally you’d just leave this as-is.*/
        metalLayer.pixelFormat = .bgra8Unorm // bgr은 왜 rgb 거꾸로? U는 뭐고 norm은 또 왜 붙는거?
        /* Apple encourages you to set framebufferOnly to true for performance reasons unless you need to sample from the textures generated for this layer, or if you need to enable compute kernels on the layer drawable texture. Most of the time, you don’t need to do this. */
        metalLayer.framebufferOnly = true // 뭔가 건드리면 퍼포먼스가 떨어지는 느낌인데 정확히 감이 안오네..
        metalLayer.frame = view.layer.frame
        view.layer.addSublayer(metalLayer)
    }
}

