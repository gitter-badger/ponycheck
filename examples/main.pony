use "../ponycheck"
use "ponytest"

actor Main is TestList
  new create(env: Env) =>
    PonyTest(env, this)

  new make() => None

  fun tag tests(test: PonyTest) =>
    test(Property1UnitTest[Array[USize]](_ListReverseProperty))
    test(Property1UnitTest[Array[USize]](_ListReverseOneProperty))
    test(_ListReverseMultipleProperties)
    test(Property1UnitTest[MyLittlePony](_CustomClassFlatMapProperty))
    test(Property1UnitTest[MyLittlePony](_CustomClassMapProperty))
    test(Property1UnitTest[MyLittlePony](_CustomClassCustomGeneratorProperty))
