# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ContentFolder < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::ContentFolder, HubSpotSDK::Internal::AnyHash)
          end

        # The unique ID of the content folder.
        sig { returns(String) }
        attr_accessor :id

        # The type of object this folder applies to. Should always be LANDING_PAGE.
        sig { returns(Integer) }
        attr_accessor :category

        # The timestamp indicating when the content folder was created.
        sig { returns(Time) }
        attr_accessor :created

        # The timestamp (ISO8601 format) when this content folder was deleted.
        sig { returns(Time) }
        attr_accessor :deleted_at

        # The name of the folder which will show up in the app dashboard
        sig { returns(String) }
        attr_accessor :name

        # The ID of the content folder this folder is nested under
        sig { returns(Integer) }
        attr_accessor :parent_folder_id

        # The timestamp indicating when the content folder was last updated.
        sig { returns(Time) }
        attr_accessor :updated

        sig do
          params(
            id: String,
            category: Integer,
            created: Time,
            deleted_at: Time,
            name: String,
            parent_folder_id: Integer,
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the content folder.
          id:,
          # The type of object this folder applies to. Should always be LANDING_PAGE.
          category:,
          # The timestamp indicating when the content folder was created.
          created:,
          # The timestamp (ISO8601 format) when this content folder was deleted.
          deleted_at:,
          # The name of the folder which will show up in the app dashboard
          name:,
          # The ID of the content folder this folder is nested under
          parent_folder_id:,
          # The timestamp indicating when the content folder was last updated.
          updated:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              category: Integer,
              created: Time,
              deleted_at: Time,
              name: String,
              parent_folder_id: Integer,
              updated: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
