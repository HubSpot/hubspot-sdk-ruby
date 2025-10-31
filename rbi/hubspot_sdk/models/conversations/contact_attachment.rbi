# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Conversations::ContactProfile) }
        attr_reader :contact_profile

        sig do
          params(
            contact_profile: HubspotSDK::Conversations::ContactProfile::OrHash
          ).void
        end
        attr_writer :contact_profile

        sig do
          returns(HubspotSDK::Conversations::ContactAttachment::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            contact_profile: HubspotSDK::Conversations::ContactProfile::OrHash,
            type: HubspotSDK::Conversations::ContactAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(contact_profile:, type:)
        end

        sig do
          override.returns(
            {
              contact_profile: HubspotSDK::Conversations::ContactProfile,
              type: HubspotSDK::Conversations::ContactAttachment::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::ContactAttachment::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::Conversations::ContactAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ContactAttachment::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
