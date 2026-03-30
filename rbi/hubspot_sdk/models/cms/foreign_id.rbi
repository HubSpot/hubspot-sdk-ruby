# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ForeignID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ForeignID, HubspotSDK::Internal::AnyHash)
          end

        # Unique identifier for the foreign ID.
        sig { returns(String) }
        attr_accessor :id

        # Name of the foreign ID.
        sig { returns(String) }
        attr_accessor :name

        # Type of the foreign ID.
        sig { returns(String) }
        attr_accessor :type

        sig do
          params(id: String, name: String, type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the foreign ID.
          id:,
          # Name of the foreign ID.
          name:,
          # Type of the foreign ID.
          type:
        )
        end

        sig { override.returns({ id: String, name: String, type: String }) }
        def to_hash
        end
      end
    end
  end
end
