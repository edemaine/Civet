{testCase} = require "./helper"

describe "new", ->
  testCase """
    basic
    ---
    new x
    ---
    new x;
  """

  testCase """
    multiple
    ---
    new new x
    ---
    new new x;
  """

  testCase """
    new property
    ---
    new x.Z(a)
    new x['Y'](a)
    ---
    new x.Z(a);
    new x['Y'](a);
  """
