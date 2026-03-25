# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicContact < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicContact,
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
          returns(HubspotSDK::Conversations::PublicContact::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            contact_profile: HubspotSDK::Conversations::ContactProfile::OrHash,
            type: HubspotSDK::Conversations::PublicContact::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(contact_profile:, type:)
        end

        sig do
          override.returns(
            {
              contact_profile: HubspotSDK::Conversations::ContactProfile,
              type: HubspotSDK::Conversations::PublicContact::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicContact::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::Conversations::PublicContact::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicContact::Type::TaggedSymbol
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
