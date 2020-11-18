package webd4201.bhavsarv;

/**
 * This exception is used to throw when the id is already in the system and user
 * is trying to create another.
 */
@SuppressWarnings("serial")
public class DuplicateException extends Exception {


         /**
          * This throws an exception message for duplicate id
          * @param id as a long to display related record message
          */
	public DuplicateException(long id) {
		System.out.println("Problem with creating User record, id " + id + " is already exists in the system.");


	}
}
