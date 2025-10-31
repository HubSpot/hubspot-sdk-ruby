# typed: strong

module HubspotSDK
  module Models
    module Account
      class PublicLoginAudit < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::PublicLoginAudit,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The login activity's unique ID.
        sig { returns(String) }
        attr_accessor :id

        # The time the login took place.
        sig { returns(Time) }
        attr_accessor :login_at

        # Whether the login was successful or not.
        sig { returns(T::Boolean) }
        attr_accessor :login_succeeded

        # The approximate country code of the login.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Email address of the user associated with the login.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # IP address where the activity originated.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        # The approximate region code of the login.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        # Information about the device used for logging in.
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent

        sig { params(user_agent: String).void }
        attr_writer :user_agent

        # The user's unique ID.
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        # Details about the a particular login activity for a HubSpot account.
        sig do
          params(
            id: String,
            login_at: Time,
            login_succeeded: T::Boolean,
            country_code: String,
            email: String,
            ip_address: String,
            location: String,
            region_code: String,
            user_agent: String,
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The login activity's unique ID.
          id:,
          # The time the login took place.
          login_at:,
          # Whether the login was successful or not.
          login_succeeded:,
          # The approximate country code of the login.
          country_code: nil,
          # Email address of the user associated with the login.
          email: nil,
          # IP address where the activity originated.
          ip_address: nil,
          location: nil,
          # The approximate region code of the login.
          region_code: nil,
          # Information about the device used for logging in.
          user_agent: nil,
          # The user's unique ID.
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              login_at: Time,
              login_succeeded: T::Boolean,
              country_code: String,
              email: String,
              ip_address: String,
              location: String,
              region_code: String,
              user_agent: String,
              user_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
