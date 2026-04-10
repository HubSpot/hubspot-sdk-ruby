# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponsePublicTeamNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::CollectionResponsePublicTeamNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Settings::PublicTeam]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubSpotSDK::Settings::PublicTeam::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubSpotSDK::Settings::PublicTeam] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
