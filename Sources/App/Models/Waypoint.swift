import Fluent
import Vapor

final class Waypoint: Model, Content {
    static let schema = Constants.waypointsSchemeName
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: FieldsKeys.Waypoint.name)
    var name: String
    
    @Field(key: FieldsKeys.Waypoint.latitude)
    var latitude: Double
    
    @Field(key: FieldsKeys.Waypoint.longitude)
    var longitude: Double
    
    @Field(key: FieldsKeys.Waypoint.question)
    var question: String
    
    @Field(key: FieldsKeys.Waypoint.correctAnswer)
    var correctAnswer: String
    
    @Field(key: FieldsKeys.Waypoint.proposedAnswers)
    var proposedAnswers: [String]
    
    init() { }

    init(id: UUID? = nil,
         name: String,
         latitude: Double,
         longitude: Double,
         question: String,
         correctAnswer: String,
         proposedAnswers: [String]) {
        self.id = id
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.question = question
        self.correctAnswer = correctAnswer
        self.proposedAnswers = proposedAnswers
    }
}
