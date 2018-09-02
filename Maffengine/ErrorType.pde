public enum ErrorType {
  NORMAL("ERROR", "!"),
  FATAL("FATAL ERROR", "X"),
  NOTICE("NOTICE", "+");
  
  String name;
  String symbol;
  
  private ErrorType(String name, String symbol){
    this.name = name;
    this.symbol = symbol;
  }
}