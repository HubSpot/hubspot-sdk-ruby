# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalUserProfile < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalUserProfile,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :full_name

        sig { params(full_name: String).void }
        attr_writer :full_name

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        sig do
          params(
            email: String,
            first_name: String,
            full_name: String,
            last_name: String
          ).returns(T.attached_class)
        end
        def self.new(email:, first_name: nil, full_name: nil, last_name: nil)
        end

        sig do
          override.returns(
            {
              email: String,
              first_name: String,
              full_name: String,
              last_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
