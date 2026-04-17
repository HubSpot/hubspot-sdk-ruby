# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module MediaBridge
        class BatchCreateParams < HubSpotSDK::Models::BatchInputPropertyCreate
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::MediaBridge::BatchCreateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :object_type

          sig do
            params(
              app_id: Integer,
              object_type: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, object_type:, request_options: {})
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                object_type: String,
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
end
