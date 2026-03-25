# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class LinkGenerationRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::LinkGenerationRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A string representing the unique identifier of the subscriber. This property is
        # required.
        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # The language in which the generated link should be presented, represented as a
        # string.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # The unique identifier for the subscription, represented as an integer in int64
        # format.
        sig { returns(T.nilable(Integer)) }
        attr_reader :subscription_id

        sig { params(subscription_id: Integer).void }
        attr_writer :subscription_id

        sig do
          params(
            subscriber_id_string: String,
            language: String,
            subscription_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A string representing the unique identifier of the subscriber. This property is
          # required.
          subscriber_id_string:,
          # The language in which the generated link should be presented, represented as a
          # string.
          language: nil,
          # The unique identifier for the subscription, represented as an integer in int64
          # format.
          subscription_id: nil
        )
        end

        sig do
          override.returns(
            {
              subscriber_id_string: String,
              language: String,
              subscription_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
