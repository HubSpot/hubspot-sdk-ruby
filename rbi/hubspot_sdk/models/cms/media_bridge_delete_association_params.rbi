# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgeDeleteAssociationParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgeDeleteAssociationParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :association_id

        sig do
          params(
            app_id: Integer,
            object_type: String,
            association_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          app_id:,
          object_type:,
          association_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              object_type: String,
              association_id: String,
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
