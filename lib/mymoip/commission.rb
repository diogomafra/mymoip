module MyMoip
  class Commission
    include ActiveModel::Validations

    attr_accessor :reason, :receiver_login, :fixed_value, :percentage_value

    validates_presence_of :reason, :receiver_login
    validates_presence_of :fixed_value,      if: -> { percentage_value.nil? }
    validates_presence_of :percentage_value, if: -> { fixed_value.nil? }
    validates_numericality_of :fixed_value, greater_than_or_equal_to: 0,
                                            allow_nil: true
    validates_numericality_of :percentage_value, greater_than_or_equal_to: 0,
                                                 less_than_or_equal_to: 1,
                                                 allow_nil: true

    def initialize(attrs)
      attrs.each do |attr, value|
        public_send(:"#{attr}=", value)
      end
    end

    def gross_amount(instruction)
      if fixed_value
        fixed_value
      elsif percentage_value
        percentage_value * instruction.gross_amount
      else
        raise InvalidComission, 'Cannot give gross_amount without fixed_value or percentage_value.'
      end
    end

    def to_xml(root = nil)
      raise InvalidComission if invalid?

      if root.nil?
        xml  = ""
        root ||= Builder::XmlMarkup.new(target: xml)
      end

      root.Comissionamento do |n1|
        n1.Razao(reason)
        n1.Comissionado {|n2| n2.LoginMoIP(receiver_login)}
        if fixed_value
          n1.ValorFixo(sprintf('%.2f', fixed_value))
        end
        if percentage_value
          n1.ValorPercentual(sprintf('%.2f', percentage_value * 100))
        end
      end

      xml
    end
  end
end
