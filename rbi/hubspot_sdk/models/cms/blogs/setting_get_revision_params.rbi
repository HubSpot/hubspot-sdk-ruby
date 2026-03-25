# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class SettingGetRevisionParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::SettingGetRevisionParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :blog_id

          sig { returns(String) }
          attr_accessor :revision_id

          sig do
            params(
              blog_id: String,
              revision_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(blog_id:, revision_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                blog_id: String,
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
