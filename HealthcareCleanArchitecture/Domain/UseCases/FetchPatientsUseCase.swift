protocol FetchPatientsUseCaseProtocol { func execute() async throws -> [Patient] }
final class FetchPatientsUseCase: FetchPatientsUseCaseProtocol { private let repository: PatientRepository; init(repository: PatientRepository){self.repository = repository}; func execute() async throws -> [Patient] { try await repository.patients() } }
