require_relative 'spec_helper'

RSpec.describe "ZSS Main Menu" do
  context "Prints a menu" do
    it "should show a zombie" do
      actual = `./zss`
      expected = %q{
NUGGGGGH MUST EAT BRAINS

                                .....
                               C C  /
                              /<   /
               ___ __________/_#__/
              /(- /(\_\________   \
              \ ) \ )_      \o     \
              /|\ /|\       |'     |
                            |     _|
                            /o   __\
                           / '     |
                          / /      |
                         /_/\______|
                        (   _(    <
                         \    \    \
                          \    \    |
                           \____\____\
                           ____\_\__\_\
                         /`   /`     o\
                         |___ |_______|
}
      expect(actual).to include(expected)
    end

    it "should print list of training paths"
      expected = "1. Running" +
                 "2. Hand-to-Hand Combat" +
                 "3. Sneaking"
      expect(actual).to include(expected)
    end

    # it "should print graphs that match the progress down the training paths" do
    #   pending "implementation of skills"
    #   fail
    # end
  end
end
