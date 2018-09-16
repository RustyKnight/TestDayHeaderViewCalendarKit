//
//  ViewController.swift
//  TestCalendarKit
//
//  Created by Shane Whitehead on 16/9/18.
//  Copyright © 2018 KaiZen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var dayHeaderView: DayHeaderView!
	
	var state = DayViewState()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		state.subscribe(client: self)
		dayHeaderView.state = state
	}


}

extension ViewController: DayViewStateUpdating {
	func move(from oldDate: Date, to newDate: Date) {
		print("from \(oldDate)")
		print("to \(newDate)")
	}
}
