require 'spec_helper'

describe Rubex do
  context "Rubex method static arrays" do
    before do
      @path = 'spec/fixtures/static_array/static_array.rubex'
    end

    context ".ast" do
      it "generates the AST" do
        # t = Rubex.ast @path
      end
    end

    context ".compile", focus: true do
      it "compiles to valid C file" do
        t,c,e = Rubex.compile @path, true
        pp t
        puts c
      end
    end
  end
end