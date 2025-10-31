# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class VersionPublicEmail < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::VersionPublicEmail,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of this marketing email version.
        sig { returns(String) }
        attr_accessor :id

        # A marketing email
        sig { returns(HubspotSDK::Marketing::PublicEmail) }
        attr_reader :object

        sig { params(object: HubspotSDK::Marketing::PublicEmail::OrHash).void }
        attr_writer :object

        sig { returns(Time) }
        attr_accessor :updated_at

        # Model definition for a version user. Contains addition information about the
        # user who created a version.
        sig { returns(HubspotSDK::VersionUser) }
        attr_reader :user

        sig { params(user: HubspotSDK::VersionUser::OrHash).void }
        attr_writer :user

        # Model definition for a marketing email version. Contains metadata describing the
        # version of the marketing email. It can be used to view edit history of a
        # marketing email.
        sig do
          params(
            id: String,
            object: HubspotSDK::Marketing::PublicEmail::OrHash,
            updated_at: Time,
            user: HubspotSDK::VersionUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of this marketing email version.
          id:,
          # A marketing email
          object:,
          updated_at:,
          # Model definition for a version user. Contains addition information about the
          # user who created a version.
          user:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              object: HubspotSDK::Marketing::PublicEmail,
              updated_at: Time,
              user: HubspotSDK::VersionUser
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
