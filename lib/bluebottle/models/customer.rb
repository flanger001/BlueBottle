require 'active_support/all'

module BlueBottle
  module Models
    class Customer
      attr_accessor :id,
                    :first_name,
                    :last_name,
                    :email,
                    :subscriptions

      def initialize(id, first_name, last_name, email)
        @id = id
        @first_name = first_name
        @last_name = last_name
        @email = email
        @subscriptions = Hash.new
      end

      def subscriptions
        @subscriptions
      end

      def full_name
        "#{first_name} #{last_name}"
      end
    end
  end
end
