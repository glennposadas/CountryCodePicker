//
//  ViewController.swift
//  CountrySelect
//
//  Created by Glenn Posadas on 6/29/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var button: UIButton!

  @IBAction func selectCountry(_ sender: Any) {
    let cv = DialCountriesController(locale: .current)
    cv.delegate = self
    cv.show(vc: self)
  }
  
}

extension ViewController: DialCountriesControllerDelegate {
  func didSelectCountry(_ country: Country) {
    button.setTitle("\(country.flag) \(country.dialCode)", for: .normal)
  }
}
