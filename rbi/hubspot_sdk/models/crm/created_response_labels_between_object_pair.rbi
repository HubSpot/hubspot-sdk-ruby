# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CreatedResponseLabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CreatedResponseLabelsBetweenObjectPair,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :created_resource_id

        sig { returns(HubspotSDK::Crm::LabelsBetweenObjectPair) }
        attr_reader :entity

        sig do
          params(entity: HubspotSDK::Crm::LabelsBetweenObjectPair::OrHash).void
        end
        attr_writer :entity

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig do
          params(
            created_resource_id: String,
            entity: HubspotSDK::Crm::LabelsBetweenObjectPair::OrHash,
            location: String
          ).returns(T.attached_class)
        end
        def self.new(created_resource_id:, entity:, location: nil)
        end

        sig do
          override.returns(
            {
              created_resource_id: String,
              entity: HubspotSDK::Crm::LabelsBetweenObjectPair,
              location: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
