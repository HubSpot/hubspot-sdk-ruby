# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EventCancelByExternalEventIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EventCancelByExternalEventIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The accountId that is associated with this marketing event in the external event
        # application
        sig { returns(String) }
        attr_accessor :external_account_id

        sig do
          params(
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The accountId that is associated with this marketing event in the external event
          # application
          external_account_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              external_account_id: String,
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
