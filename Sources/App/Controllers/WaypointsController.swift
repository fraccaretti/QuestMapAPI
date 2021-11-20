import Fluent
import Vapor

struct WaypointsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let waypoints = routes.grouped(RoutesKeys.waypoints)
        waypoints.get(use: index)
        waypoints.post(use: create)
    }

    func index(req: Request) throws -> EventLoopFuture<[Waypoint]> {
        Waypoint.query(on: req.db).all()
    }
    
    func create(req: Request) throws -> EventLoopFuture<Waypoint> {
        let waypoint = try req.content.decode(Waypoint.self)
        return waypoint.save(on: req.db).map { waypoint }
    }
}
