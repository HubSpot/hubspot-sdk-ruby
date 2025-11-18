# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicGdprDeleteInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicGdprDeleteInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the object
        sig { returns(String) }
        attr_accessor :object_id_

        # ID property
        sig { returns(T.nilable(String)) }
        attr_reader :id_property

        sig { params(id_property: String).void }
        attr_writer :id_property

        sig do
          params(object_id_: String, id_property: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the object
          object_id_:,
          # ID property
          id_property: nil
        )
        end

        sig { override.returns({ object_id_: String, id_property: String }) }
        def to_hash
        end
      end
    end
  end
end
