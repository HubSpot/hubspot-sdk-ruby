# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicSubscriptionTranslation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::PublicSubscriptionTranslation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the subscription translation was created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # A text description of the subscription translation.
        sig { returns(String) }
        attr_accessor :description

        # The code representing the language of the subscription translation.
        sig { returns(String) }
        attr_accessor :language_code

        # The name of the subscription translation.
        sig { returns(String) }
        attr_accessor :name

        # The unique identifier for the subscription associated with the translation.
        sig { returns(Integer) }
        attr_accessor :subscription_id

        # The timestamp indicating when the subscription translation was last updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        sig do
          params(
            created_at: Integer,
            description: String,
            language_code: String,
            name: String,
            subscription_id: Integer,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp indicating when the subscription translation was created.
          created_at:,
          # A text description of the subscription translation.
          description:,
          # The code representing the language of the subscription translation.
          language_code:,
          # The name of the subscription translation.
          name:,
          # The unique identifier for the subscription associated with the translation.
          subscription_id:,
          # The timestamp indicating when the subscription translation was last updated.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              created_at: Integer,
              description: String,
              language_code: String,
              name: String,
              subscription_id: Integer,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
