# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class FilterCreateResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::FilterCreateResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the created filter. It is an integer formatted as
        # int64.
        sig { returns(Integer) }
        attr_accessor :filter_id

        sig { params(filter_id: Integer).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the created filter. It is an integer formatted as
          # int64.
          filter_id:
        )
        end

        sig { override.returns({ filter_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
