# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PageVersion < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::PageVersion, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubSpotSDK::Cms::PagesPage) }
        attr_reader :object

        sig { params(object: HubSpotSDK::Cms::PagesPage::OrHash).void }
        attr_writer :object

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(HubSpotSDK::VersionUser) }
        attr_reader :user

        sig { params(user: HubSpotSDK::VersionUser::OrHash).void }
        attr_writer :user

        sig do
          params(
            id: String,
            object: HubSpotSDK::Cms::PagesPage::OrHash,
            updated_at: Time,
            user: HubSpotSDK::VersionUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, object:, updated_at:, user:)
        end

        sig do
          override.returns(
            {
              id: String,
              object: HubSpotSDK::Cms::PagesPage,
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
