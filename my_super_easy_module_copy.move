module publisher::my_super_easy_module {
    use std::signer;
    use std::string::{Self, String};
    use std::debug;
	
    struct Person has drop, copy {
	    name: String,
	    age: u8
	}


	public entry fun initialize(admin: &signer, name: String, age: u8){
		let person = Person {
            name: name,
            age: age
		};


        pass_through(copy person);
        let new_person = person;
    }


	fun pass_through(person: Person): Person {
		let new_person = person;
        new_person
    }
}
