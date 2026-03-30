# typed: strong

module HubspotSDK
  module Models
    module Settings
      class PublicTeam < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::PublicTeam,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The team's unique ID
        sig { returns(String) }
        attr_accessor :id

        # The team's name
        sig { returns(String) }
        attr_accessor :name

        # Secondary or additional members of this team
        sig { returns(T::Array[String]) }
        attr_accessor :secondary_user_ids

        # Primary members of this team
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            id: String,
            name: String,
            secondary_user_ids: T::Array[String],
            user_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The team's unique ID
          id:,
          # The team's name
          name:,
          # Secondary or additional members of this team
          secondary_user_ids:,
          # Primary members of this team
          user_ids:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              secondary_user_ids: T::Array[String],
              user_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
