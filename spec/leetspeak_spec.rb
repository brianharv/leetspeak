require('rspec')
require('pry')
require('leetspeak')

describe('leetspeak') do
  it("returns string with 'e' changed to a '3'") do
    expect(leetspeak("hey")).to(eq("h3y"))
  end

  it("returns string with '0' instead of 'o'") do
    expect(leetspeak("hello")).to(eq("h3ll0"))
  end

  it("returns string with '1' instead of 'I', ignoring lower case instances") do
    expect(leetspeak("Hello, I'm Brian")).to(eq("H3ll0, 1'm Brian"))
  end

  it("returns string with 'z' instead of 's' unless it is the first letter of a word") do
    expect(leetspeak("That's show business")).to(eq("That'z sh0w buzin3zz"))
  end
end

# Spec 1: return string with 3 instead of e
# Spec 2: return string with 0 instead of o
# Spec 3: return string with 1 instead of I (ignore lower case)
# Spec 4: return string with z instead of s (ignore instances of first word character)