{ config, lib, name, ... }:

with lib;

{

  options = {

    # Pass-through of the resource name.
    _name = mkOption {
      default = name;
      visible = false;
      description = lib.mdDoc "Name of the resource.";
    };

    # Type of the resource (for dynamic type checks).
    _type = mkOption {
      default = "unknown";
      visible = false;
      description = lib.mdDoc "Type of the resource.";
    };

    deployment.name = mkOption {
      type = types.str;
      description = lib.mdDoc ''
        The name of the NixOps deployment. This is set by NixOps.
      '';
    };

    deployment.uuid = mkOption {
      type = types.str;
      description = lib.mdDoc ''
        The UUID of the NixOps deployment. This is set by NixOps.
      '';
    };

    deployment.arguments = mkOption {
      description = lib.mdDoc ''
        Attribute set representing the NixOps arguments. This is set by NixOps.
      '';
    };

  };

}

