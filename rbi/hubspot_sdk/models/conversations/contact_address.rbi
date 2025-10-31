# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactAddress < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactAddress,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        sig { returns(T.nilable(String)) }
        attr_reader :street

        sig { params(street: String).void }
        attr_writer :street

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::ContactAddress::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubspotSDK::Conversations::ContactAddress::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :zip

        sig { params(zip: String).void }
        attr_writer :zip

        sig do
          params(
            city: String,
            country: String,
            country_code: String,
            state: String,
            street: String,
            type: HubspotSDK::Conversations::ContactAddress::Type::OrSymbol,
            zip: String
          ).returns(T.attached_class)
        end
        def self.new(
          city: nil,
          country: nil,
          country_code: nil,
          state: nil,
          street: nil,
          type: nil,
          zip: nil
        )
        end

        sig do
          override.returns(
            {
              city: String,
              country: String,
              country_code: String,
              state: String,
              street: String,
              type: HubspotSDK::Conversations::ContactAddress::Type::OrSymbol,
              zip: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::ContactAddress::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOME =
            T.let(
              :HOME,
              HubspotSDK::Conversations::ContactAddress::Type::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubspotSDK::Conversations::ContactAddress::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ContactAddress::Type::TaggedSymbol
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
