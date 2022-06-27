//
//  Country.swift
//  Country List
//
//  Created by 최은형 on 2022/06/27.
//

import Foundation

// struct
struct Country {
    var flag = "";
    var name = "";
    var year = 0;
    var population = 0.0;
    var region = "";
}

func getCountries() -> [Country] {
    var brazil = Country(flag: "🇧🇷", name: "Federative Repulibc of Brazil", year: 1822, population: 209.5, region: "South America")

    var newZealand = Country(flag: "🇳🇿", name: "New Zealand", year: 1907, population: 4.9, region: "Oceania")

    var parkistan = Country(flag: "🇵🇰", name: "Pakistan", year: 1947, population: 220.9, region: "Asia")

    var portugal = Country(flag: "🇵🇹", name: "Portugal", year: 1143, population: 10.3, region: "Europe")

    var turkey = Country(flag: "🇹🇷", name: "Turkey", year: 1923, population: 80.2, region: "Europe-Asia")

    return [brazil, newZealand, parkistan, portugal, turkey];
}
