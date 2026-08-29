import UIKit
final class AppContainer { static let shared = AppContainer(); private init(){}; @MainActor func inject(_ controller:PatientListViewController){let repo = MockPatientRepository();let useCase = FetchPatientsUseCase(repository:repo);controller.viewModel = PatientListViewModel(useCase:useCase)} }
