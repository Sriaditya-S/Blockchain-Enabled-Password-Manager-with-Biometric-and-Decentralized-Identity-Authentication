// SPDX-License: MIT
pragma solidity ^0.8.20;

contract PasswordVault {
    
    struct Credential {
        string service;
        string username;
        string encryptedPassword; // The encrypted data
        string[] shares; // The Shamir's shares of the *key*
    }
    
    // Maps a user's address to an array of their credentials.
    mapping(address => Credential[]) public userCredentials;

    event CredentialStored(address indexed user, string service);

    /**
     * @dev Stores a new credential and its key shares for the user.
     */
    function storeCredential(
        string calldata _service,
        string calldata _username,
        string calldata _encryptedPassword,
        string[] calldata _shares
    ) public {
        
        userCredentials[msg.sender].push(
            Credential(_service, _username, _encryptedPassword, _shares)
        );
        
        emit CredentialStored(msg.sender, _service);
    }

    /**
     * @dev Retrieves all credentials for the calling user.
     */
    function getCredentials() public view returns (Credential[] memory) {
        return userCredentials[msg.sender];
    }
}