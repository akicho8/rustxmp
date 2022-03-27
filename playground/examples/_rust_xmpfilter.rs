
fn main() {
    use dirs;
    println!("{:?}", dirs::audio_dir());      // => Some("/Users/ikeda/Music")
    println!("{:?}", dirs::cache_dir());      // => Some("/Users/ikeda/Library/Caches")
    println!("{:?}", dirs::config_dir());     // => Some("/Users/ikeda/Library/Application Support")
    println!("{:?}", dirs::data_dir());       // => Some("/Users/ikeda/Library/Application Support")
    println!("{:?}", dirs::data_local_dir()); // => Some("/Users/ikeda/Library/Application Support")
    println!("{:?}", dirs::desktop_dir());    // => Some("/Users/ikeda/Desktop")
    println!("{:?}", dirs::document_dir());   // => Some("/Users/ikeda/Documents")
    println!("{:?}", dirs::download_dir());   // => Some("/Users/ikeda/Downloads")
    println!("{:?}", dirs::executable_dir()); // => None
    println!("{:?}", dirs::font_dir());       // => Some("/Users/ikeda/Library/Fonts")
    println!("{:?}", dirs::home_dir());       // => Some("/Users/ikeda")
    println!("{:?}", dirs::picture_dir());    // => Some("/Users/ikeda/Pictures")
    println!("{:?}", dirs::preference_dir()); // => Some("/Users/ikeda/Library/Preferences")
    println!("{:?}", dirs::public_dir());     // => Some("/Users/ikeda/Public")
    println!("{:?}", dirs::runtime_dir());    // => None
    println!("{:?}", dirs::state_dir());      // => None
    println!("{:?}", dirs::template_dir());   // => None
    println!("{:?}", dirs::video_dir());      // => Some("/Users/ikeda/Movies")

    // extern crate directories;
    use directories::{UserDirs, ProjectDirs};

    let proj_dirs = ProjectDirs::from("com", "MyCorp", "MyApp").unwrap();
    println!("{:?}", proj_dirs.config_dir()); // => "/Users/ikeda/Library/Application Support/com.MyCorp.MyApp"

    println!("{:?}", UserDirs::new().unwrap().home_dir());       // => Some("/Users/ikeda")
    println!("{:?}", UserDirs::new().unwrap().audio_dir());      // => Some("/Users/ikeda/Music")
    println!("{:?}", UserDirs::new().unwrap().desktop_dir());    // => Some("/Users/ikeda/Desktop")
    println!("{:?}", UserDirs::new().unwrap().document_dir());   // => Some("/Users/ikeda/Documents")
    println!("{:?}", UserDirs::new().unwrap().download_dir());   // => Some("/Users/ikeda/Downloads")
    println!("{:?}", UserDirs::new().unwrap().picture_dir());    // => Some("/Users/ikeda/Pictures")
    println!("{:?}", UserDirs::new().unwrap().public_dir());     // => Some("/Users/ikeda/Public")
    println!("{:?}", UserDirs::new().unwrap().video_dir());      // => Some("/Users/ikeda/Movies")
}
