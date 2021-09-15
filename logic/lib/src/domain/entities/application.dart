// description (string, optional): Description of the application. ,
// id (string, optional): Application ID. ,
// name (string, optional): Name of the application. ,
// organizationID (string, optional): ID of the organization to which the application belongs. ,
// serviceProfileID (string, optional): ID of the service profile. ,
// serviceProfileName (string, optional): Service-profile name.

class Application {
  String? description;
  String? id;
  String? name;
  String? organizationID;
  String? serviceProfileID;
  String? serviceProfileName;

  Application({
    this.description,
    this.id,
    this.name,
    this.organizationID,
    this.serviceProfileID,
    this.serviceProfileName
  });
}
