# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailFromDetails < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicEmailFromDetails,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The reply to recipients will see.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_reply_to

        sig { params(custom_reply_to: String).void }
        attr_writer :custom_reply_to

        # The name recipients will see.
        sig { returns(T.nilable(String)) }
        attr_reader :from_name

        sig { params(from_name: String).void }
        attr_writer :from_name

        # The from address and reply to email address (if no customReplyTo defined)
        # recipients will see.
        sig { returns(T.nilable(String)) }
        attr_reader :reply_to

        sig { params(reply_to: String).void }
        attr_writer :reply_to

        sig do
          params(
            custom_reply_to: String,
            from_name: String,
            reply_to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The reply to recipients will see.
          custom_reply_to: nil,
          # The name recipients will see.
          from_name: nil,
          # The from address and reply to email address (if no customReplyTo defined)
          # recipients will see.
          reply_to: nil
        )
        end

        sig do
          override.returns(
            { custom_reply_to: String, from_name: String, reply_to: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
