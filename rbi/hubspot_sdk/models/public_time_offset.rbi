# typed: strong

module HubspotSDK
  module Models
    class PublicTimeOffset < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicTimeOffset, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :offset_direction

      sig { returns(String) }
      attr_accessor :time_unit

      sig do
        params(
          amount: Integer,
          offset_direction: String,
          time_unit: String
        ).returns(T.attached_class)
      end
      def self.new(amount:, offset_direction:, time_unit:)
      end

      sig do
        override.returns(
          { amount: Integer, offset_direction: String, time_unit: String }
        )
      end
      def to_hash
      end
    end
  end
end
