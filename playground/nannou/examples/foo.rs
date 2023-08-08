struct Root {
    value: isize,
    parent: Parent,
}

struct Parent {
    child: Child,
}

struct Child {
    value: isize,
}

impl Child {
    fn update(&mut self, root: &mut Root) {
        self.value += 1;
        root.value += 1;
    }
}

fn main() {
    let mut root = Root {
        value: 0,
        parent: Parent {
            child: Child {
                value: 0,
            },
        },
    };

    root.parent.child.update(&mut root);
}
