require('rspec')
require('numb_to_word')

describe('Fixnum#numb_to_word') do
  it('turns single digit numbers into words') do
    expect((9).numb_to_word).to(eq("nine"))
  end
  #it('turns any number of numbers into words, without syntax') do
  #  expect((9825).numb_to_word).to(eq("nine eight two five"))
  #end
  it('turns up to four digits into words, expect things with teens') do
    expect((9825).numb_to_word).to(eq("nine thousand eight hundred twenty five"))
  end
end
