# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CallingUpdateSettingsParams < HubSpotSDK::Models::Crm::Extensions::SettingsPatchRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CallingUpdateSettingsParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, request_options: {})
          end

          sig do
            override.returns(
              { app_id: Integer, request_options: HubSpotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
