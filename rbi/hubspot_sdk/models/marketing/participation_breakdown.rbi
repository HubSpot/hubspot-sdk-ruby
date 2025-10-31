# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class ParticipationBreakdown < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::ParticipationBreakdown,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubspotSDK::Marketing::ParticipationAssociations) }
        attr_reader :associations

        sig do
          params(
            associations:
              HubspotSDK::Marketing::ParticipationAssociations::OrHash
          ).void
        end
        attr_writer :associations

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(HubspotSDK::Marketing::ParticipationProperties) }
        attr_reader :properties

        sig do
          params(
            properties: HubspotSDK::Marketing::ParticipationProperties::OrHash
          ).void
        end
        attr_writer :properties

        sig do
          params(
            id: String,
            associations:
              HubspotSDK::Marketing::ParticipationAssociations::OrHash,
            created_at: Time,
            properties: HubspotSDK::Marketing::ParticipationProperties::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, associations:, created_at:, properties:)
        end

        sig do
          override.returns(
            {
              id: String,
              associations: HubspotSDK::Marketing::ParticipationAssociations,
              created_at: Time,
              properties: HubspotSDK::Marketing::ParticipationProperties
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
