# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicGdprDeleteInput < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::PublicGdprDeleteInput,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The ID of the contact to permanently delete.
          sig { returns(String) }
          attr_accessor :object_id_

          # The name of a property whose values are unique for this object. An alternative
          # to identifying a contact by ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id_property

          sig { params(id_property: String).void }
          attr_writer :id_property

          # An input that contains the information required to process a public GDPR data
          # deletion request.
          sig do
            params(object_id_: String, id_property: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The ID of the contact to permanently delete.
            object_id_:,
            # The name of a property whose values are unique for this object. An alternative
            # to identifying a contact by ID.
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
end
