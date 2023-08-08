use std::cell::RefCell;

struct Root {
    parent: Parent,
    value: RefCell<isize>,
}

struct Parent {
    child: Child,
}

struct Child {
    value: RefCell<isize>,
}

impl Child {
    fn update(&self, root: &Root) {
        *self.value.borrow_mut() += 1;
        *root.value.borrow_mut() += 1;
    }
}

fn main() {
    let root = Root {
        value: RefCell::new(0),
        parent: Parent {
            child: Child {
                value: RefCell::new(0),
            },
        },
    };

    root.parent.child.update(&root);
}
