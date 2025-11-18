# typed: strong

module HubspotSDK
  module Models
    MarketingEventExternalUniqueIdentifier =
      Marketing::MarketingEventExternalUniqueIdentifier

    module Marketing
      class MarketingEventExternalUniqueIdentifier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventExternalUniqueIdentifier,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The id of the application that created the marketing event in HubSpot.
        sig { returns(Integer) }
        attr_accessor :app_id

        # The accountId that is associated with this marketing event in the external event
        # application.
        sig { returns(String) }
        attr_accessor :external_account_id

        # The id of the marketing event in the external event application.
        sig { returns(String) }
        attr_accessor :external_event_id

        sig do
          params(
            app_id: Integer,
            external_account_id: String,
            external_event_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the application that created the marketing event in HubSpot.
          app_id:,
          # The accountId that is associated with this marketing event in the external event
          # application.
          external_account_id:,
          # The id of the marketing event in the external event application.
          external_event_id:
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              external_account_id: String,
              external_event_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
