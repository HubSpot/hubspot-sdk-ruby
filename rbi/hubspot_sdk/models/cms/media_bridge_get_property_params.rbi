# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgeGetPropertyParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgeGetPropertyParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :property_name

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(String)) }
        attr_reader :properties

        sig { params(properties: String).void }
        attr_writer :properties

        sig do
          params(
            app_id: Integer,
            object_type: String,
            property_name: String,
            archived: T::Boolean,
            properties: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          app_id:,
          object_type:,
          property_name:,
          # Whether to return only results that have been archived.
          archived: nil,
          properties: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              object_type: String,
              property_name: String,
              archived: T::Boolean,
              properties: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
