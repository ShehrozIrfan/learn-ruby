=begin
  === Modules ===
    - Wraps around the ruby code
    - Different from classes: cannot be instantiated
    - There are two uses of modules
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

  == Mixins ==
    - Ruby only allows subclass to inherit from one superclass - means doesn't allow multiple parents of the subclass
    - So, to understand mixins, consider the example below:
      Let say we've class named 'Person'
      class Person
        attr_accessor :first_name, :last_name
        attr_accessor :city, :state, :zip

        def full_name
          "#{first_name} #{last_name}"
        end

        def city_state_zip
          "#{city} #{state} #{zip}"
        end
      end

      We've some other classes named 'Customer', 'Supplier'
      Both of these also share the same functionality like Person.
      So, mixins allow us to package up this code so that we can share.
      We can take the parts related to name and make a module named 'Nameable'

      module Nameable
        attr_accessor :first_name, :last_name

        def full_name
          "#{first_name} #{last_name}"
        end
      end

      We can also take the parts related to city, state, zip and make a module named 'LocationInfo'

      module LocationInfo
        attr_accessor :city, :state, :zip

        def city_state_zip
          "#{city} #{state} #{zip}"
        end
      end

      So, now we can include these modules in Person, Customer and Supplier class, it's like same the copying the code and pasting it there

      class Person
        include Nameable
        include LocationInfo
      end

      class Customer
        include Nameable
        include LocationInfo
      end

      class Supplier
        include Nameable
        include LocationInfo
      end

      Now the question is Why we don't use the inheritance here?

      == Class Inheritance vs Mixins ==

      - Use the class inheritance when the class needs to modify or extend the functionality of another class
      - Use mixins when several classes need to utilize a single set of behaviors

    Like in our case we don't want to extend or modify the functionality, we just want to share the behaviors so
    that's why we go for mixins
=end
