class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :year,
    presence: true,
    # presence: {message: 'Debes ingresar el año'},
    numericality: { only_integer: true, message: 'Debe ser un año' }
  mount_uploader :cover, CoverUploader
end
