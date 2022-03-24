// use itertools::Itertools;
// #![feature(string_remove_matches)]
// let sigma = "Σ";
// assert_eq!("σ", sigma.to_lowercase());
// // but at the end of a word, it's ς, not σ:

#![feature(vec_into_raw_parts)]

fn main() {
    println!("{:?}", "56foo78".trim_matches(char::is_numeric)); // >> "foo"
    println!("{:?}", "56foo78".trim_start_matches(char::is_numeric)); // >> "foo78"
    println!("{:?}", "56foo78".trim_end_matches(char::is_numeric)); // >> "56foo"
    println!("{:?}", "__foo__".strip_prefix("__")); // >> Some("foo__")
    println!("{:?}", "__foo__".strip_suffix("__")); // >> Some("__foo")

    // 方法2. parse 自体に型を教えてあげる(ターボフィッシュというらしい)
    let v = "567".parse::<i32>().unwrap();
    println!("{:?}", v);        // >> 567

    let s = format!("{}", "A🐲\n".escape_debug());
    println!("{:?}", s);        // >> "A🐲\\n"

    let s = format!("{}", "A🐲\n".escape_default());
    println!("{:?}", s);        // >> "A\\u{1f432}\\n"

    let s = format!("{}", "A🐲\n".escape_unicode());
    println!("{:?}", s);        // >> "\\u{41}\\u{1f432}\\u{a}"

    println!("{:?}", "abcabcabc".replace("ab", "__")); // >> "__c__c__c"
    println!("{:?}", "abcabcabc".replacen("ab", "__", 2)); // >> "__c__cabc"

    {
        println!("{:?}", "Föö".eq_ignore_ascii_case("föö")); // >> true
        println!("{:?}", "FÖÖ".eq_ignore_ascii_case("föö")); // >> true

        let mut s = String::from("AböΣ❤");
        s.make_ascii_uppercase();
        println!("{:?}", s);        // >> "ABöΣ❤"

        let mut s = String::from("AböΣ❤");
        s.make_ascii_lowercase();
        println!("{:?}", s);        // >> "aböΣ❤"

        println!("{:?}", "AböΣ❤".to_ascii_uppercase()); // >> "ABöΣ❤"
        println!("{:?}", "AböΣ❤".to_ascii_lowercase()); // >> "aböΣ❤"
        println!("{:?}", "AböΣ❤".to_uppercase()); // >> "ABÖΣ❤"
        println!("{:?}", "AböΣ❤".to_lowercase()); // >> "aböς❤"
    }

    println!("{:?}", "foo".repeat(2)); // >> "foofoo"

    println!("{:?}", "foo".to_string()); // >> "foo"

    {
        let s = String::from("foo");
        let (ptr, len, cap) = s.into_raw_parts();
        println!("{:?}", ptr);      // >> 0x7fc962504280
        println!("{:?}", len);      // >> 3
        println!("{:?}", cap);      // >> 3

        let s = unsafe { String::from_raw_parts(ptr, len, cap) };
        println!("{:?}", s);        // >> "foo"
    }

    {
        use std::mem;
        let s = String::from("foo");

        let mut s = mem::ManuallyDrop::new(s);

        println!("{:?}", s);    // >> ManuallyDrop { value: "foo" }

        let ptr = s.as_mut_ptr();
        let len = s.len();
        let cap = s.capacity();

        println!("{:?}", ptr);  // >> 0x7fc962504280
        println!("{:?}", len);  // >> 3
        println!("{:?}", cap);  // >> 3

        unsafe {
            let s = String::from_raw_parts(ptr, len, cap);
            println!("{:?}", s);    // >> "foo"
        }
    }
}
