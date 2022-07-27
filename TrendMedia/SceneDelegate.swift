//
//  SceneDelegate.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/18.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        /*
        guard let s = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: s)

//        UserDefaults.standard.set(false, forKey: "First")
//        >> 테스트를 위해 넣어봄. 다른 화면에 배치해야 함.
        // ture이면 LaunchViewController, false면 SearchLectureTableViewController
        if UserDefaults.standard.bool(forKey: "First") {
            let sb = UIStoryboard(name: "Trend", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "LaunchViewController") as! LaunchViewController
            window?.rootViewController = vc
            window?.makeKeyAndVisible()
        } else {
            let sb = UIStoryboard(name: "Search", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "SearchLectureTableViewController") as! SearchLectureTableViewController
            window?.rootViewController = UINavigationController(rootViewController: vc)
            window?.makeKeyAndVisible()
        } */
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        /*
        guard let s = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: s)
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "LaunchViewController") as! LaunchViewController
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
         */
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

