# typed: strong

module HubSpotSDK
  module Models
    class Filter < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::Filter, HubSpotSDK::Internal::AnyHash)
        end

      # An array of conditions that define the criteria for the filter. Each condition
      # specifies a property, an operator, and optionally a value or values.
      sig { returns(T::Array[HubSpotSDK::Condition]) }
      attr_accessor :conditions

      # Defines a single condition for searching CRM objects, specifying the property to
      # filter on, the operator to use (such as equals, greater than, or contains), and
      # the value(s) to compare against.
      sig do
        params(conditions: T::Array[HubSpotSDK::Condition::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # An array of conditions that define the criteria for the filter. Each condition
        # specifies a property, an operator, and optionally a value or values.
        conditions:
      )
      end

      sig { override.returns({ conditions: T::Array[HubSpotSDK::Condition] }) }
      def to_hash
      end
    end
  end
end
