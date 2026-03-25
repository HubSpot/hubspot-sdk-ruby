# typed: strong

module HubspotSDK
  module Models
    module Cms
      class DetachFromLangGroupRequestVNext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::DetachFromLangGroupRequestVNext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the object to remove from a multi-language group.
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # ID of the object to remove from a multi-language group.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
