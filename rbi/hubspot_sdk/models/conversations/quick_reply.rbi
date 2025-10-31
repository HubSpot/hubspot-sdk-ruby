# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class QuickReply < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::QuickReply,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :value

        sig { returns(String) }
        attr_accessor :value_type

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(value: String, value_type: String, label: String).returns(
            T.attached_class
          )
        end
        def self.new(value:, value_type:, label: nil)
        end

        sig do
          override.returns({ value: String, value_type: String, label: String })
        end
        def to_hash
        end
      end
    end
  end
end
