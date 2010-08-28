class Dollars < DelegateClass(BigDecimal)

  COLUMN_TYPE = :decimal

  HoboFields.register_type(:dollars, self) 

end
