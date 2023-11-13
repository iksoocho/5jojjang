package co.yedam.common;

<<<<<<< HEAD
<<<<<<< HEAD
public interface Command {

=======
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	public void execute(HttpServletRequest req, HttpServletResponse resp);

	
>>>>>>> refs/heads/1
=======
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public void execute(HttpServletRequest req, HttpServletResponse resp);
>>>>>>> refs/heads/4
}
