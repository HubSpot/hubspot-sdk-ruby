# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class LocationAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::LocationAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Float) }
        attr_accessor :latitude

        sig { returns(Float) }
        attr_accessor :longitude

        sig do
          returns(HubspotSDK::Conversations::LocationAttachment::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            latitude: Float,
            longitude: Float,
            type: HubspotSDK::Conversations::LocationAttachment::Type::OrSymbol,
            address: String,
            name: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          latitude:,
          longitude:,
          type:,
          address: nil,
          name: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              latitude: Float,
              longitude: Float,
              type:
                HubspotSDK::Conversations::LocationAttachment::Type::OrSymbol,
              address: String,
              name: String,
              url: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::LocationAttachment::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCATION =
            T.let(
              :LOCATION,
              HubspotSDK::Conversations::LocationAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::LocationAttachment::Type::TaggedSymbol
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
