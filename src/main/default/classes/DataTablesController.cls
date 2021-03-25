/**
* @author Ben Edwards (ben@edwards.nz)
* @date 18th November 2016
* @description Provide example of using jQuery Data Tables with lightning design
* 
* CHANGE LOG: added comments, adding more comments
**/
public with sharing class DataTablesController {
	
	// CONSTRUCTOR
	public DataTablesController() {}
		

	/**
    *   @author Ben Edwards (ben@edwards.nz)
    *	@date 18th November 2016
    *   @description Simple remoting method to return a list of contacts to the VF page. my comments here
    **/		
	@ReadOnly 
	@RemoteAction	
	public static List<Contact> getContacts () {
		system.debug('In get Contacts');
		return [
			SELECT 
				Id 
				, FirstName
				, LastName
				, Email
				, Phone
			FROM 
				Contact
		];	
	}
}
