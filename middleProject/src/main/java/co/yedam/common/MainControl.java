package co.yedam.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

<<<<<<< HEAD

=======
>>>>>>> refs/heads/3
		// TODO Auto-generated method stub
<<<<<<< HEAD
=======

>>>>>>> refs/heads/3
		try {
			req.getRequestDispatcher("WEB-INF/main/main.jsp").forward(req, resp);
<<<<<<< HEAD
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
=======
		} catch (Exception e) {

>>>>>>> refs/heads/3
			e.printStackTrace();
		}
<<<<<<< HEAD
	}
=======
>>>>>>> refs/heads/3

<<<<<<< HEAD

=======
		try {
			req.getRequestDispatcher("WEB-INF/main/main.jsp").forward(req, resp);
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

>>>>>>> refs/heads/3
}
