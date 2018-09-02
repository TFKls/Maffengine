import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.time.LocalDateTime;

public static class Helpers {
  
  public static String getCurrentTimestamp(){
    String year = nf(year(), 4);
    String month = nf(month(), 2);
    String day = nf(day(), 2);
    String dayOfWeek;
    String hour = nf(hour(), 2);
    String min = nf(minute(), 2);
    String sec = nf(second(), 2);
    
    switch(LocalDateTime.now().getDayOfWeek()){
      case MONDAY:
        dayOfWeek = "Mon";
      break;
      case TUESDAY:
        dayOfWeek = "Tue";
      break;
      case WEDNESDAY:
        dayOfWeek = "Wed";
      break;
      case THURSDAY:
        dayOfWeek = "Thu";
      break;
      case FRIDAY:
        dayOfWeek = "Fri";
      break;
      case SATURDAY:
        dayOfWeek = "Sat";
      break;
      case SUNDAY:
        dayOfWeek = "Sun";
      break;
      default:
        dayOfWeek = "???";
      break;
    }
    
    return "[ "+ dayOfWeek +", "+ day +"."+ month +"."+ year +" | "+ hour +":"+ min +":"+ sec +" ]";
  }
  
  // function appendToFile() was coded with help from:
  // https://forum.processing.org/two/discussion/11883/how-to-append-a-text-to-a-file
  public static void appendToFile(String filename, String text){
    FileWriter fileWriter;
    PrintWriter printWriter;
    File file = new File(filename);
    
    try {
      if(file.exists()){
        file.getParentFile().mkdirs();
        file.createNewFile();
      }
      fileWriter = new FileWriter(filename, true);
      printWriter = new PrintWriter(new BufferedWriter(fileWriter));
      
      printWriter.write(text); // TODO: fix the removing \n bug
      
      printWriter.close();
    } catch(IOException e){
      e.printStackTrace();
    }
  }
  
  // function clearFile() was taken from:
  // https://stackoverflow.com/questions/6994518/how-to-delete-the-content-of-text-file-without-deleting-itself
  public static void clearFile(String filename){
    File file = new File(filename);
    PrintWriter writer;
    try {
      writer = new PrintWriter(file);
      writer.close();
    } catch(Exception e){
      e.printStackTrace();
    }
  }
  
}