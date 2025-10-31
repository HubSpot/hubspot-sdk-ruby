# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PreResolvedContact < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PreResolvedContact,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :contact_properties_leading_to_match

        sig { returns(Integer) }
        attr_accessor :contact_vid

        sig do
          params(
            contact_properties_leading_to_match: T::Array[String],
            contact_vid: Integer
          ).returns(T.attached_class)
        end
        def self.new(contact_properties_leading_to_match:, contact_vid:)
        end

        sig do
          override.returns(
            {
              contact_properties_leading_to_match: T::Array[String],
              contact_vid: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
