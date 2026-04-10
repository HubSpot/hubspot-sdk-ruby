# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class ContactName < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::ContactName,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        sig { returns(T.nilable(String)) }
        attr_reader :middle_name

        sig { params(middle_name: String).void }
        attr_writer :middle_name

        sig { returns(T.nilable(String)) }
        attr_reader :prefix

        sig { params(prefix: String).void }
        attr_writer :prefix

        sig { returns(T.nilable(String)) }
        attr_reader :suffix

        sig { params(suffix: String).void }
        attr_writer :suffix

        sig do
          params(
            first_name: String,
            last_name: String,
            middle_name: String,
            prefix: String,
            suffix: String
          ).returns(T.attached_class)
        end
        def self.new(
          first_name: nil,
          last_name: nil,
          middle_name: nil,
          prefix: nil,
          suffix: nil
        )
        end

        sig do
          override.returns(
            {
              first_name: String,
              last_name: String,
              middle_name: String,
              prefix: String,
              suffix: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
