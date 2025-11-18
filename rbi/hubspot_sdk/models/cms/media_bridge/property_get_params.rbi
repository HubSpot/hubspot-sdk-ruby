# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class PropertyGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::PropertyGetParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :object_type

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # Limit the response to only include the specified properties.
          sig { returns(T.nilable(String)) }
          attr_reader :properties

          sig { params(properties: String).void }
          attr_writer :properties

          sig do
            params(
              app_id: Integer,
              object_type: String,
              archived: T::Boolean,
              properties: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            app_id:,
            object_type:,
            # Whether to return only results that have been archived.
            archived: nil,
            # Limit the response to only include the specified properties.
            properties: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                object_type: String,
                archived: T::Boolean,
                properties: String,
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
end
