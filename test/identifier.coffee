{testCase} = require "./helper"

describe "identifier", ->
  testCase """
    $
    ---
    $ = 3
    $$ = 2
    ---
    $ = 3;
    $$ = 2;
  """

  testCase """
    _
    ---
    __ = 3
    _  = 2
    ---
    __ = 3;
    _  = 2;
  """
