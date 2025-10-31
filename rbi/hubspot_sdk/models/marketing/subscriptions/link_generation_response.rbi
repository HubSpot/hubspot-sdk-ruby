# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class LinkGenerationResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::LinkGenerationResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :manage_preferences_url

          sig { returns(String) }
          attr_accessor :subscriber_id_string

          sig { returns(String) }
          attr_accessor :unsubscribe_all_url

          sig { returns(T.nilable(String)) }
          attr_reader :unsubscribe_single_url

          sig { params(unsubscribe_single_url: String).void }
          attr_writer :unsubscribe_single_url

          sig do
            params(
              manage_preferences_url: String,
              subscriber_id_string: String,
              unsubscribe_all_url: String,
              unsubscribe_single_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            manage_preferences_url:,
            subscriber_id_string:,
            unsubscribe_all_url:,
            unsubscribe_single_url: nil
          )
          end

          sig do
            override.returns(
              {
                manage_preferences_url: String,
                subscriber_id_string: String,
                unsubscribe_all_url: String,
                unsubscribe_single_url: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
