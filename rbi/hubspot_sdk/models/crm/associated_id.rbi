# typed: strong

module HubspotSDK
  module Models
    module CRM
      class AssociatedID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::AssociatedID, HubspotSDK::Internal::AnyHash)
          end

        # The ID for the association type.
        sig { returns(String) }
        attr_accessor :id

        # The type of association.
        sig { returns(String) }
        attr_accessor :type

        # Contains the id and type of an association
        sig { params(id: String, type: String).returns(T.attached_class) }
        def self.new(
          # The ID for the association type.
          id:,
          # The type of association.
          type:
        )
        end

        sig { override.returns({ id: String, type: String }) }
        def to_hash
        end
      end
    end
  end
end
