defmodule DwvWeb.ProductView do
  use DwvWeb, :view
  alias DwvWeb.ProductView

  def render("index.json", %{products: products}) do
    %{Produtos_cadastrados: render_many(products, ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{dados: render_one(product, ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{id: product.id,
      name: product.name,
      price: product.price}
  end

  def render("not_found.json", _assings) do
    %{error: "Nenhum produto foi encontrado"}
  end

end
