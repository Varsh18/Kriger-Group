

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import org.pack.Employee;

@WebServlet("/insertPhoto")
@MultipartConfig(maxFileSize=16177215)
public class insertPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream inputstream=null;
		Employee emp=new Employee();
		Part file=request.getPart("photo");
		System.out.println(file.getName());
		int ps=(int)file.getSize();
		if(file!=null){
			inputstream=file.getInputStream();
			emp.insertPhoto(inputstream,ps);
		}
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/employee.jsp");
		RequetsDispatcherObj.forward(request, response);
		}
}