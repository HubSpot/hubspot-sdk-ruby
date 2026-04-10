# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicContact < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicContact,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Conversations::ContactProfile) }
        attr_reader :contact_profile

        sig do
          params(
            contact_profile: HubSpotSDK::Conversations::ContactProfile::OrHash
          ).void
        end
        attr_writer :contact_profile

        sig do
          returns(HubSpotSDK::Conversations::PublicContact::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            contact_profile: HubSpotSDK::Conversations::ContactProfile::OrHash,
            type: HubSpotSDK::Conversations::PublicContact::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(contact_profile:, type:)
        end

        sig do
          override.returns(
            {
              contact_profile: HubSpotSDK::Conversations::ContactProfile,
              type: HubSpotSDK::Conversations::PublicContact::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Conversations::PublicContact::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT =
            T.let(
              :CONTACT,
              HubSpotSDK::Conversations::PublicContact::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicContact::Type::TaggedSymbol
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
