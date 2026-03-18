// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //solidity version and the sign upward to represent that the compiler can use any version higher

contract SimpleStorage{
    
     uint256  myfavoriteNumber;//0, also by default this is "internal" meaning you wont see the value of the  favourite number ,change it to public if you want to be able to see it
     
     struct person{
        uint256 favoritenumber;
        string name;
     }
     function store(uint256 _favouriteNumber) public virtual {
      
        myfavoriteNumber=_favouriteNumber;}// this finction updates the  favourite number to a new number 

      function retrieve() public view returns(uint256){
         return myfavoriteNumber;
      }// this retrieves the stored number 
      // mapping

       person[] public listofpeople;//[]
      mapping (string => uint256) public nameToFavouritenumber;

   // Memory call data and storage

   function addperson( string memory _name, uint256 _favoritenumber) public{
      //_name="cat";
      listofpeople.push( person(_favoritenumber, _name));
      nameToFavouritenumber[_name]=_favoritenumber;// this is saying anytime you search someones name you get the favourite number back
   }
    
   

}