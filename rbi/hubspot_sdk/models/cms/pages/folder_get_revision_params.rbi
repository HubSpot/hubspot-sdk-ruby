# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Pages
        class FolderGetRevisionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Pages::FolderGetRevisionParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_id_

          sig { returns(String) }
          attr_accessor :revision_id

          sig do
            params(
              object_id_: String,
              revision_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_id_:, revision_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                object_id_: String,
                revision_id: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
