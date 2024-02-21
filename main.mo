//motoko giriş

//import

import Map "mo:base/HashMap";
import Text "mo:base/Text";
// actor->akıllı sözleşme
actor {
  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc:Text;
    phone:Phone;
  };
  //değişkenler
  // let->immutable(değişmez)
  //var->mutable(değişebilir)
  // const->???
  let phonebook=Map.HashMap<Name,Entry>(0,Text.equal,Text.hash);
  //query->sorgular
  //update->development
  //async()->parallel
  public func insert(name: Name, entry:Entry) : async() {
    phonebook.put(name,entry);
  };
  public query func lookup(name:Name):async?Entry{
    phonebook.get(name);
  };
}