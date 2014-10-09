package br.com.topSIS.utils;

public class Util {

	private static Util instance;

	public static Util getInstance() {
		if (instance == null) {
			instance = new Util();
		}
		return instance;
	}
	
	  public static String fromCharCode(int... codePoints) {
		    StringBuilder builder = new StringBuilder(codePoints.length);
		    for (int codePoint : codePoints) {
		        builder.append(Character.toChars(codePoint));
		    }
		    return builder.toString();
		}
	    
	    @SuppressWarnings("static-access")
		public String crypt(String senha){
	    	String pwd = "";
			int chave = 932;
          Character c;
        
			for(int x = 0; x < senha.length();  x++) {
				c = senha.charAt(x);
			    pwd+= fromCharCode((~(c.codePointAt(senha, x) - chave)) % 256);
			}
			
			return pwd;
	    }
}
