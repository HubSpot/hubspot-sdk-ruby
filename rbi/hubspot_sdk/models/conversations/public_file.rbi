# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicFile < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicFile,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig { returns(String) }
        attr_accessor :file_usage_type

        sig { returns(HubspotSDK::Conversations::PublicFile::Type::OrSymbol) }
        attr_accessor :type

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
            file_id: String,
            file_usage_type: String,
            type: HubspotSDK::Conversations::PublicFile::Type::OrSymbol,
            name: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(file_id:, file_usage_type:, type:, name: nil, url: nil)
        end

        sig do
          override.returns(
            {
              file_id: String,
              file_usage_type: String,
              type: HubspotSDK::Conversations::PublicFile::Type::OrSymbol,
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
              T.all(Symbol, HubspotSDK::Conversations::PublicFile::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubspotSDK::Conversations::PublicFile::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicFile::Type::TaggedSymbol
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
