public static class Logger {

  public static PApplet sketch;
  private static String logOutput;

  public static void initialize(PApplet p) {
    sketch = p;
    logOutput = sketch.dataPath("maffengine.log");
    Helpers.clearFile(logOutput);
    log("Logging system initialized succefully");
  }

  public static void log(String msg) {
    msg = Helpers.getCurrentTimestamp() + " " + msg + "\n";
    Helpers.appendToFile(logOutput, msg);
  }

  public static void logError(Error error) {
    String symbol = error.getType().symbol;
    String type = error.getType().name;
    String errMsg = error.getMessage();

    String msg = symbol + Helpers.getCurrentTimestamp() + " " + type + ": " + errMsg + "\n";
    Helpers.appendToFile(logOutput, msg);
  }
}