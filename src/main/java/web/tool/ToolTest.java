package web.tool;

public class ToolTest {
  public static void main(String[] args) {
//    File src = new File("F:/hybrid2/Gallery/imgResize/3.jpg");
//    File dest = new File("F:/hybrid2/Gallery/imgResize/3_mini.jpg");
//
//    Tool.imgResize(src, dest, 120, 80);
  
    String upDir = "F:/hybrid2/Gallery/imgResize";
    String src = "Au.jpg";
    
    String file2 = Tool.preview(upDir, src, 120, 80);
    System.out.println(file2 + "»ý¼ºµÊ.");
  }

}
