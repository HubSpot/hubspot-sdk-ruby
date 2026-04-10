# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationSpec < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationSpec,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        sig { returns(String) }
        attr_accessor :category

        # A unique integer identifier for the specific association type within its
        # category.
        sig { returns(Integer) }
        attr_accessor :type_id

        sig do
          params(category: String, type_id: Integer).returns(T.attached_class)
        end
        def self.new(
          # Specifies the category of the association, which can be HUBSPOT_DEFINED,
          # INTEGRATOR_DEFINED, or USER_DEFINED.
          category:,
          # A unique integer identifier for the specific association type within its
          # category.
          type_id:
        )
        end

        sig { override.returns({ category: String, type_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
