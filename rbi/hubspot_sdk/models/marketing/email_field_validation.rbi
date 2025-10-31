# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailFieldValidation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailFieldValidation,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A list of email domains to block.
        sig { returns(T::Array[String]) }
        attr_accessor :blocked_email_domains

        # Whether to block the free email providers.
        sig { returns(T::Boolean) }
        attr_accessor :use_default_block_list

        # Describes how an email address should be validated.
        sig do
          params(
            blocked_email_domains: T::Array[String],
            use_default_block_list: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of email domains to block.
          blocked_email_domains:,
          # Whether to block the free email providers.
          use_default_block_list:
        )
        end

        sig do
          override.returns(
            {
              blocked_email_domains: T::Array[String],
              use_default_block_list: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
