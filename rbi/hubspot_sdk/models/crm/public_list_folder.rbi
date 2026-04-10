# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicListFolder < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicListFolder,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The Id of the folder.
        sig { returns(String) }
        attr_accessor :id

        # An array of list Id's contained in this folder.
        sig { returns(T::Array[Integer]) }
        attr_accessor :child_lists

        sig { returns(T::Array[HubSpotSDK::Crm::PublicListFolder]) }
        attr_accessor :child_nodes

        # The Id of the folder this folder is in, the root folder is represented as 0.
        sig { returns(String) }
        attr_accessor :parent_folder_id

        # The time the folder was created at.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The name of the folder.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The time the folder was last updated at.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The time that the contents of the folder was last updated at.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_contents_at

        sig { params(updated_contents_at: Time).void }
        attr_writer :updated_contents_at

        # The user Id of the owner of the folder.
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig do
          params(
            id: String,
            child_lists: T::Array[Integer],
            child_nodes: T::Array[HubSpotSDK::Crm::PublicListFolder],
            parent_folder_id: String,
            created_at: Time,
            name: String,
            updated_at: Time,
            updated_contents_at: Time,
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The Id of the folder.
          id:,
          # An array of list Id's contained in this folder.
          child_lists:,
          child_nodes:,
          # The Id of the folder this folder is in, the root folder is represented as 0.
          parent_folder_id:,
          # The time the folder was created at.
          created_at: nil,
          # The name of the folder.
          name: nil,
          # The time the folder was last updated at.
          updated_at: nil,
          # The time that the contents of the folder was last updated at.
          updated_contents_at: nil,
          # The user Id of the owner of the folder.
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              child_lists: T::Array[Integer],
              child_nodes: T::Array[HubSpotSDK::Crm::PublicListFolder],
              parent_folder_id: String,
              created_at: Time,
              name: String,
              updated_at: Time,
              updated_contents_at: Time,
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
