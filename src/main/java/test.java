

	import java.awt.Desktop;
	import java.io.IOException;
	import java.net.URI;
	import java.net.URISyntaxException;

public class test {
	public static void main(String[] args) {
		String str = "https://youtu.be/oq0WQ4C9WhU";
		String[] you = str.split("/");
		
		int size = you.length-1;
		
		String y = "https://youtube.com/embed/"+you[size];
		
		try { 
			Desktop.getDesktop().browse(new URI(y)); 
		} catch (IOException e) { e.printStackTrace(); 
		} catch (URISyntaxException e) { e.printStackTrace(); }
		
	}
}

