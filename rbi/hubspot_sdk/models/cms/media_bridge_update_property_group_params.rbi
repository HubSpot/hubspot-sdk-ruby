# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeUpdatePropertyGroupParams < HubspotSDK::Models::PropertyGroupUpdate
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeUpdatePropertyGroupParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :group_name

        sig do
          params(
            app_id: String,
            object_type: String,
            group_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(app_id:, object_type:, group_name:, request_options: {})
        end

        sig do
          override.returns(
            {
              app_id: String,
              object_type: String,
              group_name: String,
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
