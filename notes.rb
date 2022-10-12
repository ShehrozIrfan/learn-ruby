=begin
  === Modules ===
    - Wraps around the ruby code
    - Different from classes: cannot be instantiated
    - Namespacing
    - Mixins

  == Namespacing ==
    - Prevents conflicts when code has similarly named classes and methods
    - Example: Classroom with two boys named 'Ali'
    - So, when the teacher asked 'Ali' to answer, both of them will be confused to whom the teacher
      asked the question. So, to solve this is to add something like this: 'Ali S', 'Ali T'
      That is namespacing.
    - Same is the case in ruby.
    - Let say we've class Date and it's implement the functionality of dating site.
    - So, when we create the instance of this class as: Date.new, then the ruby will call the Date class
      which is already present in ruby, like Date is a ruby class as well. So, how we will differentiate both?
      We used modules.
=end
