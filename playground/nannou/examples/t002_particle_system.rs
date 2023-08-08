// ↓オリジナル
// https://github.com/nannou-org/nannou/blob/master/nature_of_code/chp_04_systems/4_03_exercise_moving_particle_system.rs
//
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
//
// example 4-03: Exercise Moving Particle System
use nannou::prelude::*;

struct Particle {
    position: Point2,
    velocity: Vec2,
    acceleration: Vec2,
    alive_counter: f32,
}

impl Particle {
    fn new(l: Point2) -> Self {
        let acceleration = vec2(0.0, 0.08);
        let velocity = vec2(random_f32() * 1.0 - 0.5, -4.0 + random_f32() * -4.0);
        let position = l;
        let alive_counter = 0.0;
        Particle {
            acceleration,
            velocity,
            position,
            alive_counter,
        }
    }

    fn update(&mut self) {
        self.velocity += self.acceleration;
        self.position -= self.velocity;
        self.alive_counter += 1.0;
    }

    fn display(&self, draw: &Draw) {
        draw.rect()
            .xy(self.position)
            .w_h(4.0, 4.0)
            .color(DODGERBLUE);
    }

    fn is_dead(&self) -> bool {
        self.alive_counter >= 60.0 * 4.0
    }
}

pub struct ParticleSystem {
    particles: Vec<Particle>,
    pub origin: Point2,
}

impl ParticleSystem {
    pub fn new() -> Self {
        let origin = pt2(0.0, 0.0);
        let particles = Vec::new();
        ParticleSystem { origin, particles }
    }

    pub fn add_particle(&mut self) {
        self.particles.push(Particle::new(self.origin));
    }

    pub fn update(&mut self) {
        for i in (0..self.particles.len()).rev() {
            self.particles[i].update(); // FIXME: 添字アクセスは止めたい
            if self.particles[i].is_dead() {
                self.particles.remove(i);
            }
        }
    }

    pub fn draw(&self, draw: &Draw) {
        for p in self.particles.iter() {
            p.display(&draw);
        }
    }
}
