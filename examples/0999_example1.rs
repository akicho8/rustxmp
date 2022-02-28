use rusqlite::{params, Connection, Result};

fn main() -> Result<()> {
    let cn = Connection::open_in_memory()?;
    cn.execute(
        "CREATE TABLE users (id INTEGER, name TEXT, age INTEGER)",
        params![],
    )?;
    let mut stmt = cn.prepare("INSERT INTO users(id, name, age) VALUES (?, ?, ?)")?;
    stmt.execute(params![1, "alice", 20])?;
    stmt.execute(params![2, "bob", 20])?;
    Ok(())
}
