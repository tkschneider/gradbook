# Created by Victor
class Degree < ActiveRecord::Base
  self.inheritance_column = nil # Allows the type column to be used without interfering with Rails' conventions
  
  def self.humanize_type(type)
    humanized_types = {
      aa: 'Associate of Arts (A.A)',
      as: 'Associate of Science (A.S.)',
      ba: 'Bachelor of Arts (B.A.)',
      bs: 'Bachelor of Science (B.S)',
      ma: 'Master of Arts (M.A.)',
      ms: 'Master of Science (M.S.)',
      phd: 'Doctoral (Ph.D.)',
      md: 'Medical Doctor (M.D.)'
    }
    humanized_types[type]
  end

  def self.undergraduate_types
    [ :aa, :as, :ba, :bs ]
  end

  def self.graduate_types
    [ :ma, :ms, :phd, :md ]
  end

  enum type: Degree.undergraduate_types + Degree.graduate_types

  def humanized_type
    Degree.humanized_type(type.to_sym)
  end
end
