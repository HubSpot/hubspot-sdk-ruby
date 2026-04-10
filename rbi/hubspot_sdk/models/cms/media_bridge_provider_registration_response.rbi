# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgeProviderRegistrationResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :name

        sig { params(app_id: Integer, name: String).returns(T.attached_class) }
        def self.new(app_id:, name:)
        end

        sig { override.returns({ app_id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end
