# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class ParticipationAssociations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::ParticipationAssociations,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Marketing::ContactAssociation) }
        attr_reader :contact

        sig do
          params(
            contact: HubspotSDK::Marketing::ContactAssociation::OrHash
          ).void
        end
        attr_writer :contact

        sig { returns(HubspotSDK::Marketing::MarketingEventAssociation) }
        attr_reader :marketing_event

        sig do
          params(
            marketing_event:
              HubspotSDK::Marketing::MarketingEventAssociation::OrHash
          ).void
        end
        attr_writer :marketing_event

        sig do
          params(
            contact: HubspotSDK::Marketing::ContactAssociation::OrHash,
            marketing_event:
              HubspotSDK::Marketing::MarketingEventAssociation::OrHash
          ).returns(T.attached_class)
        end
        def self.new(contact:, marketing_event:)
        end

        sig do
          override.returns(
            {
              contact: HubspotSDK::Marketing::ContactAssociation,
              marketing_event: HubspotSDK::Marketing::MarketingEventAssociation
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
