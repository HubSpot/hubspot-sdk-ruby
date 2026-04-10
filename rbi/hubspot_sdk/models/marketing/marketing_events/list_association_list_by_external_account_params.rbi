# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        class ListAssociationListByExternalAccountParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::MarketingEvents::ListAssociationListByExternalAccountParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :external_account_id

          sig { returns(String) }
          attr_accessor :external_event_id

          sig do
            params(
              external_account_id: String,
              external_event_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            external_account_id:,
            external_event_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                external_account_id: String,
                external_event_id: String,
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
