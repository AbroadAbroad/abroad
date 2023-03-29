class LogInWithEmailAndPasswordFailure {
  final String message;

  const LogInWithEmailAndPasswordFailure([this.message = "An Unknown error occurred."]);

  factory LogInWithEmailAndPasswordFailure.fromCode(String fromCode){
    switch(fromCode){
      case 'invalid-email':
        return const LogInWithEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case 'operation-not-allowed':
        return const LogInWithEmailAndPasswordFailure('Operation is not allowed. Please contact support.');
      case 'user-disabled':
        return const LogInWithEmailAndPasswordFailure('This user has been disabled. Please contact support for help.');
      case 'user-not-found':
        return const LogInWithEmailAndPasswordFailure('User not found. Please check your credentials or sign up.');
      case 'wrong-password':
        return const LogInWithEmailAndPasswordFailure('Wrong password. \nPlease check your credentials or reset your password.');
      case 'too-many-requests':
        return const LogInWithEmailAndPasswordFailure('Too many requests. Please try again later.');
      case 'network-request-failed':
        return const LogInWithEmailAndPasswordFailure('No internet connection available.');
      case 'unknown':
        return const LogInWithEmailAndPasswordFailure('Unknown Error.');
      default:
        return LogInWithEmailAndPasswordFailure("An unknown error occurred. Error code: $fromCode. Please try again later.");
    }
  }
}