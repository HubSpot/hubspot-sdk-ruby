# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactURL < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactURL,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :url

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::ContactURL::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubspotSDK::Conversations::ContactURL::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            url: String,
            type: HubspotSDK::Conversations::ContactURL::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(url:, type: nil)
        end

        sig do
          override.returns(
            {
              url: String,
              type: HubspotSDK::Conversations::ContactURL::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::ContactURL::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOME =
            T.let(
              :HOME,
              HubspotSDK::Conversations::ContactURL::Type::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubspotSDK::Conversations::ContactURL::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ContactURL::Type::TaggedSymbol
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
