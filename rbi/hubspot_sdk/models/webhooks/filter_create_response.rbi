# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class FilterCreateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::FilterCreateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :filter_id

        sig { params(filter_id: Integer).returns(T.attached_class) }
        def self.new(filter_id:)
        end

        sig { override.returns({ filter_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
