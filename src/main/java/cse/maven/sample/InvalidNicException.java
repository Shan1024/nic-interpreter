package cse.maven.sample;


/**
 *
 * @author Shan
 */
public class InvalidNicException extends Exception {
    public InvalidNicException() {
		super("Invalid NIC Number");
	}
}
