# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailVersion < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicEmailVersion,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubspotSDK::Marketing::PublicEmail) }
        attr_reader :object

        sig { params(object: HubspotSDK::Marketing::PublicEmail::OrHash).void }
        attr_writer :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(HubspotSDK::VersionUser) }
        attr_reader :user

        sig { params(user: HubspotSDK::VersionUser::OrHash).void }
        attr_writer :user

        sig do
          params(
            id: String,
            object: HubspotSDK::Marketing::PublicEmail::OrHash,
            updated_at: Time,
            user: HubspotSDK::VersionUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, object:, updated_at:, user:)
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
