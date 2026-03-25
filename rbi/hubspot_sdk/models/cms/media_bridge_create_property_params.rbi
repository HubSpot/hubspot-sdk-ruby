# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeCreatePropertyParams < HubspotSDK::Models::PropertyCreate
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeCreatePropertyParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :object_type

        sig do
          params(
            app_id: String,
            object_type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(app_id:, object_type:, request_options: {})
        end

        sig do
          override.returns(
            {
              app_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
