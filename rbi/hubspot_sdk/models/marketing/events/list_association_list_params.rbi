# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Events
        class ListAssociationListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Events::ListAssociationListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :marketing_event_id

          sig do
            params(
              marketing_event_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(marketing_event_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                marketing_event_id: String,
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
