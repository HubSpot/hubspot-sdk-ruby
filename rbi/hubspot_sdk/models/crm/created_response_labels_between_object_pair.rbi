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

        # The unique identifier of the newly created resource.
        sig { returns(String) }
        attr_accessor :created_resource_id

        sig { returns(HubspotSDK::Crm::LabelsBetweenObjectPair) }
        attr_reader :entity

        sig do
          params(entity: HubspotSDK::Crm::LabelsBetweenObjectPair::OrHash).void
        end
        attr_writer :entity

        # The URL location of the newly created resource.
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
        def self.new(
          # The unique identifier of the newly created resource.
          created_resource_id:,
          entity:,
          # The URL location of the newly created resource.
          location: nil
        )
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
