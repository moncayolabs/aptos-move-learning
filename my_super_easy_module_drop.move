module publisher::my_super_easy_module {
    use std::signer;
    use std::string::{Self, String};
    use std::debug;
	
    struct Person has drop {
	    name: String,
	    age: u8
	}


	public entry fun initialize(admin: &signer, name: String, age: u8){
		let new_person = Person {
            name: name,
            age: age
		};
    }
}
