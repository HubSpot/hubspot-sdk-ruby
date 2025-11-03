# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Timeline
        class TokenUpdateParams < HubspotSDK::Models::Crm::TimelineEventTemplateTokenUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Timeline::TokenUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig { returns(String) }
          attr_accessor :event_template_id

          sig do
            params(
              app_id: Integer,
              event_template_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, event_template_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                app_id: Integer,
                event_template_id: String,
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
