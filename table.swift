//
//  table.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 02/03/2023.
//

import Foundation

//Structure
struct table{
    
    var name:String
    var photo:String
    var details:String
    var price: String
    
    
    static func getTable() -> [table] {
        return [
            table(name: "Syria and Turkey Earthquake Relief Campaign", photo: "earthquake", details: "Your compassionate donation to the Syria and Turkey Earthquake Relief Campaign is a reminder that even in the darkest of times, there is still goodness in the world. Your giving provides not only physical aid but also a sense of emotional support and hope to those who have been affected by the earthquakes. With your help, they are not only surviving but also beginning to heal, one small step at a time.", price: "Collected price:474,796,878"),
            
            table(name: "Housing insurance", photo: "house1", details: "With your support, we can provide a safe and nurturing home for those who have struggled with homelessness or inadequate housing.Your compassion and kindness can bring the gift of stability and hope to families, helping them to create a bright future filled with love and cherished memories. Let us join together to make the dream of a home a reality for those who need it most.", price: "Collected price:182,610.00") ,
            
            table(name: "River cleaning", photo: "cleaning", details: "By donating to river cleaning initiatives, you can help protect not just the environment, but also the health and well-being of those who depend on the rivers for their livelihoods. Your contribution can make a difference in the fight against pollution and ensure that future generations can enjoy clean and healthy rivers. Every drop counts, and your donation can be the spark that ignites a movement to clean up our waterways and preserve them for years to come.", price: "Collected price:12,000"),
            
            table(name: "School needs", photo: "school", details: "Although every kid should have access to an education, not all families can afford it. By helping students with their education bills, you can have a big impact while giving them the chance to follow their education and their goals. Additionally, giving these students seminars and backpacks can ensure that they have the tools they need to success in school and seek a better future. Your kindness can motivate a new generation of students and open the door to a brighter future.", price: "Collected price:44,300"),
            
            table(name: "Winter Blanket", photo: "blanket", details: "As winter brings cold temperatures and harsh conditions, many families struggle to stay warm and comfortable. Your donation to provide a warm blanket can make a world of difference to a family in need. Not only does it provide physical warmth, but it also brings a sense of comfort and security knowing that someone cares. Give the gift of warmth this winter season and help make a difference in the lives of those who need it most.", price: "Collected price:70,700"),
            
        ]
    }
}
