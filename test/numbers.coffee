{testCase} = require "./helper"

describe "Civet", ->
  testCase """
    floats
    ---
    x = -3.12
    ---
    x = -3.12;
  """

  testCase """
    hex
    ---
    x = 0xff
    ---
    x = 0xff;
  """

  testCase """
    hex _
    ---
    x = 0xffff_ffff
    ---
    x = 0xffff_ffff;
  """

  testCase """
    binary
    ---
    x = 0b11
    ---
    x = 0b11;
  """

  testCase """
    binary _
    ---
    x = 0B1010_1010
    ---
    x = 0B1010_1010;
  """

  testCase """
    octal
    ---
    x = 0o77
    ---
    x = 0o77;
  """

  testCase """
    octal _
    ---
    x = 0O7171_0303
    ---
    x = 0O7171_0303;
  """

  testCase """
    big integer
    ---
    x = 0n
    x = 123_456n
    ---
    x = 0n;
    x = 123_456n;
  """
