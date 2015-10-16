# Crear una clase Book que tenga tres atributos :title, :author y :pages
# Hacer que el contructor permita crear objetos Book sin importar el orden de
# los tributos o incluso, si no están presentes
# Si los valores no fueron seleccionados, usar los siguientes:
#   name: 'EL libro de la vida'
#   author: 'Falso 123'
#   pages: 200

class Book
    attr_accessor :name, :author, :pages

    def initialize( name: 'El libro de la vida', author: 'Fake 123', pages: 200  )
        @name = name
        @author = author
        @pages = pages
    end

end

book1 = Book.new name: 'La biblia'
p book1

book2 = Book.new
p book2

book3 = Book.new name: 'La biblia', pages: 200
p book3
