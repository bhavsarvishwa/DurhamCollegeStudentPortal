package webd4201.bhavsarv;

/**
 * This exception is used to throw an exception when retrieving the id and the
 * id is not exist in the system.
 *
 *
 */
@SuppressWarnings("serial")
public class InvalidIdException extends Exception {

    public InvalidIdException(long id) {
        System.out.println(id + " is invalid id.");
    }

}
