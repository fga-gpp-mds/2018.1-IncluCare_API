include EmailValidate
class Student < ApplicationRecord
  validates_presence_of :name, presence: true, message: 'can t be left blank'
  validates_presence_of :birth_date, presence: true, message: 'can t be left blank'
  validates_presence_of :age, presence: true, message: 'can t be left blank'
  validates_presence_of :nationality, presence: true, message: 'can t be left blank'
  validates_presence_of :year, presence: true, message: 'can t be left blank'
  validates_presence_of :student_class, presence: true, message: 'can t be left blank'
  validates_presence_of :shift, presence: true, message: 'can t be left blank'
  validates_presence_of :father_name, presence: true, message: 'can t be left blank'
  validates_presence_of :mother_name, presence: true, message: 'can t be left blank'
  validates_presence_of :address, presence: true, message: 'can t be left blank'
  validates_presence_of :parent_telephone, presence: true, length: { is: 11 }, message: 'can t be left blank'
  validates_presence_of :parent_email, presence: true, email: true, message: 'can t be left blank'

  validates_length_of :name, minimum: 5, message: 'at least 5 characters'
  validates_length_of :nationality, maximum: 14, message: 'deve possuir no maximo 15 caracteres'
  validates_length_of :year, maximum: 2, message: 'deve possuir no maximo 3 digitos'
  validates_length_of :student_class, minimum: 1, message: 'at least 1 characters'
  validates_length_of :shift, minimum: 1, message: 'at least 1 characters'
  validates_length_of :father_name, minimum: 5, message: 'at least 5 characters'
  validates_length_of :mother_name,minimum: 5, message: 'at least 5 characters'
  validates_length_of :address, minimum: 7, message: 'at least 7 characters'

  validates_numericality_of :age, message: 'need to be number'
  validates_numericality_of :parent_telephone, message: 'need to be number'
end