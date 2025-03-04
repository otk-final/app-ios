//
//  RNBridge.swift
//  ios
//
//  Created by 黄祥云 on 2025/3/3.
//

import Foundation
import React
import SwiftUI

struct RNDelegateView: UIViewControllerRepresentable {
    
    var module: String

    var props: [AnyHashable: Any]?

    func makeUIViewController(context: Context) -> some UIViewController {
        // init
        let rnCtrl = UIViewController()
        let rnView = buildView(ctrl: rnCtrl, context: context)

        // add root view
        rnCtrl.view.addSubview(rnView)
        return rnCtrl
    }

    private func buildView(ctrl: UIViewController, context: Context) -> RCTRootView {
        
        // debug or release
        let bundle = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")

        // react native root view
        let view = RCTRootView(bundleURL: bundle!, moduleName: module, initialProperties: props, launchOptions: nil)
        view.frame = ctrl.view.frame
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        return view
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //todo update
    }

}
