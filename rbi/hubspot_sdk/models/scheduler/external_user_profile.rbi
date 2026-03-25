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

        # The email address of the user.
        sig { returns(String) }
        attr_accessor :email

        # The first name of the user.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # The full name of the user.
        sig { returns(T.nilable(String)) }
        attr_reader :full_name

        sig { params(full_name: String).void }
        attr_writer :full_name

        # The last name of the user.
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
        def self.new(
          # The email address of the user.
          email:,
          # The first name of the user.
          first_name: nil,
          # The full name of the user.
          full_name: nil,
          # The last name of the user.
          last_name: nil
        )
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
