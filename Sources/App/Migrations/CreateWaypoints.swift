import Fluent

struct CreateWaypoints: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Constants.waypointsSchemeName)
            .id()
            .field(FieldsKeys.Waypoint.name, .string, .required)
            .field(FieldsKeys.Waypoint.latitude, .double, .required)
            .field(FieldsKeys.Waypoint.longitude, .double, .required)
            .field(FieldsKeys.Waypoint.question, .string, .required)
            .field(FieldsKeys.Waypoint.correctAnswer, .string, .required)
            .field(FieldsKeys.Waypoint.proposedAnswers, .array(of: .string), .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Constants.waypointsSchemeName).delete()
    }
}
