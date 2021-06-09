import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    app.get("test", "async") { req async throws -> HTTPStatus in
        let response = try await req.client.get("https://vapor.codes")
        return response.status
    }
}
