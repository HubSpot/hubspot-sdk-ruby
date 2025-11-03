# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class ChannelConnectionSettingCreateParams < HubspotSDK::Models::Crm::Extensions::ChannelConnectionSettingsRequest
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Extensions::Calling::ChannelConnectionSettingCreateParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              params(
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(request_options: {})
            end

            sig do
              override.returns({ request_options: HubspotSDK::RequestOptions })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
