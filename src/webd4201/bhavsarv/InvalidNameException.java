package webd4201.bhavsarv;

/**
 * This exception is used when invalid name is provided to to insert.
 *
 */
@SuppressWarnings("serial")
class InvalidNameException extends Exception {

    /**
     * Returns the exception message to see the error
     *
     * @param string
     */
    public InvalidNameException(String string) {
        System.out.println(string + " is invalid name. Name cannot be a number");
    }
}
