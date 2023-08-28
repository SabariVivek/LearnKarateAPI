Feature:

  Scenario:
    * print "Jesus Christ"

    # Variable Declaration using def...
    * def name = "Sabari Vivek"
    * print name

    # ----------------------------------------------------------------------

    # Declaration using text...
    * text description =
    """
    This is Sabari
    I am working as an automation tester
    I am living in Chennai
    I am having 5 years of experience
    """
    * print description

    # ----------------------------------------------------------------------

    # Converting table to JSON...
    * table emp
      | name     | experience |
      | 'Anu'    | 3          |
      | 'Vivek'  | 4          |
      | 'Sabari' | 5          |
    * print emp

    # ----------------------------------------------------------------------

    # Converting CSV to JSON...
    * text employee =
    """
    name, experience
    Anu, 3
    Vivek, 4
    Sabari, 5
    """
    * csv new = employee
    * print new

    # ----------------------------------------------------------------------