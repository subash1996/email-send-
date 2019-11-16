package Interface;
import com.Bean.AdminResponse;
import com.Bean.FileuploadBean;
import com.Bean.OwnerRegister;
import com.Bean.RegisterBean;
import com.Bean.UserRequest;
public interface Interface {
  
	 public int Register(RegisterBean rb);
	 public boolean login(RegisterBean lb);
	 public int OwnerRegister( OwnerRegister or);
	 public boolean OwnerLogin( OwnerRegister lr);
	 public int FileuploadBean(FileuploadBean fu);
	 public int req(UserRequest ur);
	 public boolean res(UserRequest ar);
	}
 
