package inter;

import bean.tlfilebean2;
import bean.Uploadbean;
import bean.Userregbean;

public interface Inter {
	
	public int ureg(Userregbean ur);
	  public boolean ulog(Userregbean ur);
	  public int tlf2(tlfilebean2 tf);
	  public int uploadinter(Uploadbean ub);
	  public int uploadinter2(Uploadbean fub);
	  
	  public int requestinter(Uploadbean rb);
	  public int responsinter(Uploadbean rp);
	  
	  //public int hackerinter(Uploadbean hr);

}
