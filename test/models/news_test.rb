# test/models/news_test.rb

require "test_helper"

class NewsTest < ActiveSupport::TestCase
  test "debe crear noticia correctamente" do
    news = News.new(title: "Título de prueba", content: "Contenido de prueba")
    assert news.save, "No se pudo crear la noticia"
  end
end
