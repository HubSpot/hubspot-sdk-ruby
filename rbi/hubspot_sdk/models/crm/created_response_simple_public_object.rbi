# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CreatedResponseSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CreatedResponseSimplePublicObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the newly created resource.
        sig { returns(String) }
        attr_accessor :created_resource_id

        # A simple public object.
        sig { returns(HubspotSDK::Crm::SimplePublicObject) }
        attr_reader :entity

        sig { params(entity: HubspotSDK::Crm::SimplePublicObject::OrHash).void }
        attr_writer :entity

        # The URL location of the newly created resource.
        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig do
          params(
            created_resource_id: String,
            entity: HubspotSDK::Crm::SimplePublicObject::OrHash,
            location: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the newly created resource.
          created_resource_id:,
          # A simple public object.
          entity:,
          # The URL location of the newly created resource.
          location: nil
        )
        end

        sig do
          override.returns(
            {
              created_resource_id: String,
              entity: HubspotSDK::Crm::SimplePublicObject,
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
