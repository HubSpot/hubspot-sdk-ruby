# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListSizeDataPoint < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListSizeDataPoint,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :size

        sig { returns(Time) }
        attr_accessor :timestamp

        sig { params(size: Integer, timestamp: Time).returns(T.attached_class) }
        def self.new(size:, timestamp:)
        end

        sig { override.returns({ size: Integer, timestamp: Time }) }
        def to_hash
        end
      end
    end
  end
end
