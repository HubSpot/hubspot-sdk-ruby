# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ContentCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::ContentCloneRequestVNext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the object to be cloned.
        sig { returns(String) }
        attr_accessor :id

        # Name of the cloned object.
        sig { returns(T.nilable(String)) }
        attr_reader :clone_name

        sig { params(clone_name: String).void }
        attr_writer :clone_name

        # Request body object for cloning content.
        sig { params(id: String, clone_name: String).returns(T.attached_class) }
        def self.new(
          # ID of the object to be cloned.
          id:,
          # Name of the cloned object.
          clone_name: nil
        )
        end

        sig { override.returns({ id: String, clone_name: String }) }
        def to_hash
        end
      end
    end
  end
end
