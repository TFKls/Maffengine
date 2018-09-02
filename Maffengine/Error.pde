public class Error {
  
  private ErrorType type;
  private String message;
  
  Error(ErrorType type, String msg){
    this.type = type;
    message = msg;
  }
  
  public ErrorType getType(){
    return type;
  }
  
  public String getMessage(){
    return message;
  }
  
  public String getMsg(){
    return getMessage();
  }
  
}