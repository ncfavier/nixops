{ config, lib, uuid, name, ... }:

with lib;

{

  options = {

    publicKey = mkOption {
      default = "";
      type = types.str;
      description = lib.mdDoc "The generated public SSH key.";
    };

    privateKey = mkOption {
      default = "";
      type = types.str;
      description = lib.mdDoc "The generated private key.";
    };

  };

}
