# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class FileAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::FileAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          returns(HubspotSDK::Conversations::FileAttachment::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :file_usage_type

        sig { params(file_usage_type: String).void }
        attr_writer :file_usage_type

        sig do
          params(
            file_id: String,
            type: HubspotSDK::Conversations::FileAttachment::Type::OrSymbol,
            file_usage_type: String
          ).returns(T.attached_class)
        end
        def self.new(file_id:, type:, file_usage_type: nil)
        end

        sig do
          override.returns(
            {
              file_id: String,
              type: HubspotSDK::Conversations::FileAttachment::Type::OrSymbol,
              file_usage_type: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::FileAttachment::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILE =
            T.let(
              :FILE,
              HubspotSDK::Conversations::FileAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::FileAttachment::Type::TaggedSymbol
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
