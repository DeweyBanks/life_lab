require_relative './person'
require_relative './simple_assert'
include SimpleAssert



p1 = Person.new
assert_that("A person is alive at instantiation", p1.alive?, true)
assert_that("A person has an age of 0 at instantiation", p1.age, 0)
p1.age!
assert_that("A person can age", p1.age, 1)


assert_that("A new person does not have a name at birth", p1.name, nil)
p1.name = "Jim Kevin"
assert_that("We can set a person's name", p1.name, "Jim Kevin")

assert_that("a person has a brain hash", p1.brain.is_a?(Hash), true)
assert_that("a brain has memories", p1.brain.has_key?(:memories), true)
assert_that("a brain has love_ones", p1.brain.has_key?(:love_ones), true)
assert_that("a brain has interests", p1.brain.has_key?(:interests), true)


assert_that("A person can't remember anything before the age of 3", p1.memories, nil)
p1.age!
p1.age!
assert_that("At the age of 3 a person can hold memories", p1.memories.is_a?(Array), true)
p1.remember("going to the bathroom under the piano")
assert_that("...and remember things", p1.memories, [{age: 3, memory: "going to the bathroom under the piano"}])

p1.get_interested_in("football")
assert_that("At the age of 3 a person has no interests", p1.interests.empty?, true)

