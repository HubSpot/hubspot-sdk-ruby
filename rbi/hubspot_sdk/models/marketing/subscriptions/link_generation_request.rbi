# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class LinkGenerationRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::LinkGenerationRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :subscriber_id_string

          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

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
            subscriber_id_string:,
            language: nil,
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
end
