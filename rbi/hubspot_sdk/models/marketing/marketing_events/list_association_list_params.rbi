# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        class ListAssociationListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::MarketingEvents::ListAssociationListParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :marketing_event_id

          sig do
            params(
              marketing_event_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(marketing_event_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                marketing_event_id: String,
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
