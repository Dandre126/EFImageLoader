//
//  ViewController.swift
//  EFImageLoader
//
//  Created by ezefranca on 02/21/2017.
//  Copyright (c) 2017 ezefranca. All rights reserved.
//

import UIKit
import EFImageLoader

class ViewController: UIViewController, EFImageLoaderProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func stopLoader(_ sender: UIBarButtonItem) {
        self.hideImageLoader()
    }
    
    @IBAction func showLoader(_ sender: Any) {
        
        let options = EFImageLoaderOptions(imagesFrames: (1...29).map { UIImage(named: "loading_000\($0)")!}, backgroundAlpha: 0.5, backgroundFadeColor:UIColor.black, animationDuration: 0.9)
        self.showImageLoader(options)

    }
    
    @IBAction func showSonic(_ sender: Any) {
        let options = EFImageLoaderOptions(imagesFrames: (1...8).map { UIImage(named: "sonic\($0)")!}, backgroundAlpha: 0.2, backgroundFadeColor:UIColor.blue,  animationDuration: 0.6)
        self.showImageLoader(options)
    }
    
    @IBAction func showNumbers(_ sender:Any) {
        
        let options = EFImageLoaderOptions(imagesFrames: (1...10).map { UIImage(named: "number\($0)")!}, backgroundAlpha: 0.5, backgroundFadeColor:UIColor.green, animationDuration: 2.0)
        self.showImageLoader(options)
    
    }
}

