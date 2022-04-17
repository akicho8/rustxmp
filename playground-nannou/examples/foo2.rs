struct Parent {
    child: Child,
    value: isize,
}

struct Child {
    value: isize,
}

impl Child {
    fn update(&mut self, Parent: &mut Parent) {
        self.value += 1;
        Parent.value += 1;
    }
}

fn main() {
    let mut Parent = Parent {
        value: 0,
        child: Child {
            value: 0,
        },
    };

    Parent.child.update(&mut Parent);
}
