import Fluent

struct FieldsKeys {
    
    struct Waypoint {
        static let name = FieldKey(stringLiteral: "name")
        static let latitude = FieldKey(stringLiteral: "latitude")
        static let longitude = FieldKey(stringLiteral: "longitude")
        static let question = FieldKey(stringLiteral: "question")
        static let correctAnswer = FieldKey(stringLiteral: "correctAnswer")
        static let proposedAnswers = FieldKey(stringLiteral: "proposedAnswers")
    }
}
