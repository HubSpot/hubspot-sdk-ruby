# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class VersionPublicEmail < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::VersionPublicEmail,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of this marketing email version.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubSpotSDK::Marketing::PublicEmail) }
        attr_reader :object

        sig { params(object: HubSpotSDK::Marketing::PublicEmail::OrHash).void }
        attr_writer :object

        # The date and time of the last update to the email, in ISO8601 representation.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(HubSpotSDK::VersionUser) }
        attr_reader :user

        sig { params(user: HubSpotSDK::VersionUser::OrHash).void }
        attr_writer :user

        sig do
          params(
            id: String,
            object: HubSpotSDK::Marketing::PublicEmail::OrHash,
            updated_at: Time,
            user: HubSpotSDK::VersionUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of this marketing email version.
          id:,
          object:,
          # The date and time of the last update to the email, in ISO8601 representation.
          updated_at:,
          user:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              object: HubSpotSDK::Marketing::PublicEmail,
              updated_at: Time,
              user: HubSpotSDK::VersionUser
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
