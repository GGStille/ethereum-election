pragma solidity ^0.4.2;

contract Election {
    // Model the Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    // Store a Candidate
    // Fetch Candidate
    mapping (uint => Candidate) public candidates;
    // Store Candidates Count
    uint public candidatesCount;
    
    function Election () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}