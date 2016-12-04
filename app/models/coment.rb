class Coment < ApplicationRecord
 belongs_to :user

 validates :descripcion, presence: true

 enum type_coment:['Android', 'iOS']

end
