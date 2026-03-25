# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderUpdateTaskLocator < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderUpdateTaskLocator,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the task
        sig { returns(String) }
        attr_accessor :id

        # Links for where to check information related to the task. The `status` link
        # gives the URL for where to check the status of the task.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        sig do
          params(id: String, links: T::Hash[Symbol, String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the task
          id:,
          # Links for where to check information related to the task. The `status` link
          # gives the URL for where to check the status of the task.
          links: nil
        )
        end

        sig { override.returns({ id: String, links: T::Hash[Symbol, String] }) }
        def to_hash
        end
      end
    end
  end
end
