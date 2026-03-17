//
//  ViewController.swift
//  M3WeatherEx
//
//  Created by Eun Mi Kim on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    
    
    func getWeatherImaege(matching weather: String) -> UIImage?{
        
        switch weather{
        case "Sunny":
           return UIImage(named:"sunny")
        case "Cloudy":
            return UIImage(named:"cloudy")
        case "Rainy":
            return UIImage(named:"rainy")
        case "Snowy":
            return UIImage(named:"snowy")
        default:
            return UIImage(named:"weather")
        }
        
    }
    
    func getWeatherDescription(){
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)"
        switch temperature{
        case 0..<20:
            descriptionLabel.text = "Extream cold"
        case 20..<50:
            descriptionLabel.text = "It's cold outside"
        case 50..<69:
            descriptionLabel.text = "Cool and mild"
        case 69..<86:
            descriptionLabel.text = "Warm!"
        default:
            descriptionLabel.text = "Heat alert!"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weather = "Cloudy", temperature = 78
    let weather = ["Sunny","Cloudy", "Rainy", "Snowy"].randomElement() ?? "Sunny"
//        guard let weather else
//            return
        
        let temperature = 23
        switch weather{
        case "Sunny":
            weatherImageView.image = UIImage(named:"sunny")
        case "Cloudy":
            weatherImageView.image = UIImage(named:"cloudy")
        case "Rainy":
            weatherImageView.image = UIImage(named:"rainy")
        case "Snowy":
            weatherImageView.image = UIImage(named:"snowy")
        default:
            weatherImageView.image = UIImage(named:"weather")
        }
        
        //challenge task 1
        //function that tells you an activity to do with tempeature
        func getWeatherDescirption(matching temperature: Int)-> String?{
            
            weatherImageView.image = getWeatherDescirption(matching: weather
            statusLabel.text = weather
            temperatureLabel.text = "\(temperature)"
            descriptionLabel.text = getWeatherDescription(matching: temperature)
                                                           
            switch temperature{
            case 0..<20:
                descriptionLabel.text = "Extream cold"
            case 20..<50:
                descriptionLabel.text = "It's cold outside"
            case 50..<69:
                descriptionLabel.text = "Cool and mild"
            case 69..<86:
                descriptionLabel.text = "Warm!"
            default:
                descriptionLabel.text = "Heat alert!"
            }
            
        }
        
        
    }


}

