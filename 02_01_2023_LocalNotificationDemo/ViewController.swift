//
//  ViewController.swift
//  02_01_2023_LocalNotificationDemo
//
//  Created by Vishal Jagtap on 06/03/23.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
            //NotificationCentre
        let notificationCentre = UNUserNotificationCenter.current()
        notificationCentre.requestAuthorization(options: [.alert,.sound]){ (granted, error) in
        }
        
        //NotificationContent
        let content = UNMutableNotificationContent()
        content.title = "iOS New Batch"
        content.body = "iOS New Batch is Starting in next Week"
        
        let date = Date().addingTimeInterval(2)
       
        let dateComponent = Calendar.current.dateComponents([Calendar.Component.year,
                                            Calendar.Component.month,
                                            Calendar.Component.day,
                                            .hour,
                                            .minute,
                                            .second], from: date)
        //NotificationTrigger
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: false)
        let uuidString = UUID().uuidString
        print(uuidString)
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        notificationCentre.add(request){
            (error) in
            
        }
    }
}
