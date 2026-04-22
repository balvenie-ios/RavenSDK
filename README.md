# Raven SDK

## 安裝說明

***Swift Package Manager***
	
* 點選 File > Add Package Dependencies。
* 複製 https://github.com/balvenie-ios/RavenSDK.git ，將它輸入在 Search or Enter Package URL 的框框裡，選擇 SDK 後點選 Add Package。

## 代碼整合 ***Swift***

- 增加以下代碼到 `AppDelegate.swift`.

	```swift
	import UIKit
	import RavenSDK /// <== 增加 import
	
	class AppDelegate: UIResponder, UIApplicationDelegate {
	    
	    ...
	
	    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	        // 增加呼叫 configure 並帶入 site, package 以及 completion closure
	        Raven.shared.configure(site: "test", package: "test01") { isSuccess in
	            print("configure result: \(isSuccess)")
	        }
	        
	        ...
	    }
	
	}
	```
