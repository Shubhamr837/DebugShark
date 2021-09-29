class ApiConstants {
  static String baseURLForQuestionService = "http://0.0.0.0:8081";
  static String baseURLForCompilerService = "http://0.0.0.0:5000";
  static String runJavaEndpoint = baseURLForCompilerService + "/runjava";
  static String runCppEndpoint = baseURLForCompilerService + "/runcpp";
  static String getAllQuestionsEndpoint = baseURLForQuestionService + "/getAllQuestions";
  static String getQuestionByIDEndpoint = baseURLForQuestionService + "/getQuestion?id=";
  static String getQuestionsByCategoryEndpoint = baseURLForQuestionService + "/getQuestion?category=";
}