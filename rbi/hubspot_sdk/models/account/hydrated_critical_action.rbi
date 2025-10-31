# typed: strong

module HubspotSDK
  module Models
    module Account
      class HydratedCriticalAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::HydratedCriticalAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the activity.
        sig { returns(String) }
        attr_accessor :id

        # The time the activity took place.
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of activity.
        sig { returns(String) }
        attr_accessor :type

        # The user's unique ID.
        sig { returns(Integer) }
        attr_accessor :user_id

        # Email address of the user associated with the activity.
        sig { returns(T.nilable(String)) }
        attr_reader :acting_user

        sig { params(acting_user: String).void }
        attr_writer :acting_user

        # The approximate country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # A link to the URL where the action was taken in the account.
        sig { returns(T.nilable(String)) }
        attr_reader :info_url

        sig { params(info_url: String).void }
        attr_writer :info_url

        # IP address where the activity originated.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        # The ID of the affected object.
        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        # The approximate region code.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        # Details about the a particular security activity for a HubSpot account.
        sig do
          params(
            id: String,
            created_at: Time,
            type: String,
            user_id: Integer,
            acting_user: String,
            country_code: String,
            info_url: String,
            ip_address: String,
            location: String,
            object_id_: String,
            region_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the activity.
          id:,
          # The time the activity took place.
          created_at:,
          # The type of activity.
          type:,
          # The user's unique ID.
          user_id:,
          # Email address of the user associated with the activity.
          acting_user: nil,
          # The approximate country code.
          country_code: nil,
          # A link to the URL where the action was taken in the account.
          info_url: nil,
          # IP address where the activity originated.
          ip_address: nil,
          location: nil,
          # The ID of the affected object.
          object_id_: nil,
          # The approximate region code.
          region_code: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              type: String,
              user_id: Integer,
              acting_user: String,
              country_code: String,
              info_url: String,
              ip_address: String,
              location: String,
              object_id_: String,
              region_code: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
