defmodule Onicn do
  def generate_all do
    Onicn.Categories.Solid.generate_pages()
    Onicn.Categories.Liquid.generate_pages()
    Onicn.Categories.Gas.generate_pages()
    Onicn.Category.generate_json()
    Onicn.Category.generate_pages()
  end
end
