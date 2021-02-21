//
//  TimeCounter.swift
//  Diving-into-SwiftUI
//
//  Created by codestorm on 2021/2/27.
//

import SwiftUI
import Combine


class TimeCounter: ObservableObject {
  var timer: Timer?
  @Published var counter = 0

  @objc func updateCounter() {
    counter += 1
  }
    
    init() {
      timer = Timer.scheduledTimer(timeInterval:1, target: self,
        selector:#selector(updateCounter), userInfo: nil,
        repeats: true)
    }

    func killTimer() {
      timer?.invalidate()
      timer = nil
    }

}
