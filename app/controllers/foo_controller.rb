class FooController < ApplicationController
  # def bar
  # end

  # def baz
  # end

  def biz
    render html: "Foo#biz"
  end
end
