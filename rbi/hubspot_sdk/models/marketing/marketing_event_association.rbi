# typed: strong

module HubspotSDK
  module Models
    MarketingEventAssociation = Marketing::MarketingEventAssociation

    module Marketing
      class MarketingEventAssociation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventAssociation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The internal ID of the marketing event in HubSpot
        sig { returns(String) }
        attr_accessor :marketing_event_id

        # The name of the marketing event in HubSpot
        sig { returns(String) }
        attr_accessor :name

        # The account ID that is associated with this marketing event in the external
        # event application
        sig { returns(T.nilable(String)) }
        attr_reader :external_account_id

        sig { params(external_account_id: String).void }
        attr_writer :external_account_id

        # The event ID that is associated with this marketing event in the external event
        # application
        sig { returns(T.nilable(String)) }
        attr_reader :external_event_id

        sig { params(external_event_id: String).void }
        attr_writer :external_event_id

        sig do
          params(
            marketing_event_id: String,
            name: String,
            external_account_id: String,
            external_event_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the marketing event in HubSpot
          marketing_event_id:,
          # The name of the marketing event in HubSpot
          name:,
          # The account ID that is associated with this marketing event in the external
          # event application
          external_account_id: nil,
          # The event ID that is associated with this marketing event in the external event
          # application
          external_event_id: nil
        )
        end

        sig do
          override.returns(
            {
              marketing_event_id: String,
              name: String,
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
