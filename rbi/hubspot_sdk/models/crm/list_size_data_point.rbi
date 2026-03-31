# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListSizeDataPoint < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListSizeDataPoint,
              HubspotSDK::Internal::AnyHash
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
