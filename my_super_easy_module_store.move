module publisher::my_super_easy_module_store {
    use std::signer;
    use std::string::{Self, String};
    use std::debug;
	
    struct Person has key, store {
	    name: String,
	    age: u8
	}

    struct Spaceship has key {
        driver: Person, 
        capacity: u64,
    }

	public entry fun initialize(admin: &signer, name: String, age: u8){
		let new_person = Person {
            name: name,
            age: age
		};

        let apollo11 = Spaceship {
            driver: new_person, 
            capacity: 100
        };

        move_to(
            admin,
            apollo11,
        );
    }
}
