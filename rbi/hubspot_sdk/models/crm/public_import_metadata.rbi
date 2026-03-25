# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicImportMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicImportMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Summarized outcomes of each row a developer attempted to import into HubSpot.
        sig { returns(T::Hash[Symbol, Integer]) }
        attr_accessor :counters

        # The IDs of files uploaded in the File Manager API.
        sig { returns(T::Array[String]) }
        attr_accessor :file_ids

        # The lists containing the imported objects.
        sig { returns(T::Array[HubspotSDK::Crm::PublicObjectListRecord]) }
        attr_accessor :object_lists

        sig do
          params(
            counters: T::Hash[Symbol, Integer],
            file_ids: T::Array[String],
            object_lists:
              T::Array[HubspotSDK::Crm::PublicObjectListRecord::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Summarized outcomes of each row a developer attempted to import into HubSpot.
          counters:,
          # The IDs of files uploaded in the File Manager API.
          file_ids:,
          # The lists containing the imported objects.
          object_lists:
        )
        end

        sig do
          override.returns(
            {
              counters: T::Hash[Symbol, Integer],
              file_ids: T::Array[String],
              object_lists: T::Array[HubspotSDK::Crm::PublicObjectListRecord]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
