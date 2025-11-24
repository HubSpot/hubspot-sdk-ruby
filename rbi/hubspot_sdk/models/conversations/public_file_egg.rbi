# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicFileEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicFileEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          returns(HubspotSDK::Conversations::PublicFileEgg::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            file_id: String,
            type: HubspotSDK::Conversations::PublicFileEgg::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(file_id:, type:)
        end

        sig do
          override.returns(
            {
              file_id: String,
              type: HubspotSDK::Conversations::PublicFileEgg::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicFileEgg::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubspotSDK::Conversations::PublicFileEgg::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicFileEgg::Type::TaggedSymbol
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
