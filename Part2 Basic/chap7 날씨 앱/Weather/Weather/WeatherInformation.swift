//
//  WeatherInformation.swift
//  Weather
//
//  Created by 김소현 on 2022/07/11.
//

import Foundation

struct WeatherInformation: Codable {
    // Codable : 자신을 JSON과 같은 외부 파일로 변환할 수 있는 타입
    // JSON 인코딩과 디코딩이 모두 가능하다!
    
    let weather: [Weather]
    let temp: Temp
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case weather
        case temp = "main"
        case name
    }
}

struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Temp: Codable {
    let temp: Double
    let feelsLike: Double
    let minTemp: Double
    let maxTemp: Double
    // JSON data와 다르게 정의되어도, mapping 할 수 있도록!
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
        // 구조체에서 정의한 키 값과, 서버에서 내려온 JSON 키 값이 달라도
        // 정상적으로 매핑 될 수 있다.
    }
}

/*
 
 // 포항 날씨

{
    "coord":{
        "lon":129.365,
        "lat":36.0322
    },
    "weather":[
        {
            "id":804,
            "main":"Clouds",
            "description":"overcast clouds",
            "icon":"04d"}
    ],
    "base":"stations",
    "main":{
        "temp":298.44,
        "feels_like":299.43,
        "temp_min":298.44,
        "temp_max":298.44,
        "pressure":1006,
        "humidity":92,
        "sea_level":1006,
        "grnd_level":1006},
    "visibility":10000,
    "wind":{
        "speed":2.13,
        "deg":157,
        "gust":3.1
    },
    "clouds":{
        "all":100
    },
    "dt":1657524357,
    "sys":{
        "country":"KR",
        "sunrise":1657484050,
        "sunset":1657536081
    },
    "timezone":32400,
    "id":1839071,
    "name":"Pohang",
    "cod":200
}


*/
