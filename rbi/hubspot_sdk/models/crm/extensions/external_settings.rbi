# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ExternalSettings < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ExternalSettings,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :create_meeting_url

          sig { returns(T.nilable(String)) }
          attr_reader :delete_meeting_url

          sig { params(delete_meeting_url: String).void }
          attr_writer :delete_meeting_url

          sig { returns(T.nilable(String)) }
          attr_reader :fetch_accounts_uri

          sig { params(fetch_accounts_uri: String).void }
          attr_writer :fetch_accounts_uri

          sig { returns(T.nilable(String)) }
          attr_reader :update_meeting_url

          sig { params(update_meeting_url: String).void }
          attr_writer :update_meeting_url

          sig { returns(T.nilable(String)) }
          attr_reader :user_verify_url

          sig { params(user_verify_url: String).void }
          attr_writer :user_verify_url

          sig do
            params(
              create_meeting_url: String,
              delete_meeting_url: String,
              fetch_accounts_uri: String,
              update_meeting_url: String,
              user_verify_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            create_meeting_url:,
            delete_meeting_url: nil,
            fetch_accounts_uri: nil,
            update_meeting_url: nil,
            user_verify_url: nil
          )
          end

          sig do
            override.returns(
              {
                create_meeting_url: String,
                delete_meeting_url: String,
                fetch_accounts_uri: String,
                update_meeting_url: String,
                user_verify_url: String
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
