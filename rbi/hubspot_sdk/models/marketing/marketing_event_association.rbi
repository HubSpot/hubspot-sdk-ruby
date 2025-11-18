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

        sig { returns(String) }
        attr_accessor :marketing_event_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :external_account_id

        sig { params(external_account_id: String).void }
        attr_writer :external_account_id

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
          marketing_event_id:,
          name:,
          external_account_id: nil,
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
