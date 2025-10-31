# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class SettingListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::SettingListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig { returns(T.nilable(Time)) }
          attr_reader :created_after

          sig { params(created_after: Time).void }
          attr_writer :created_after

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(Time)) }
          attr_reader :created_before

          sig { params(created_before: Time).void }
          attr_writer :created_before

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_after

          sig { params(updated_after: Time).void }
          attr_writer :updated_after

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_before

          sig { params(updated_before: Time).void }
          attr_writer :updated_before

          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            after: nil,
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            limit: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                archived: T::Boolean,
                created_after: Time,
                created_at: Time,
                created_before: Time,
                limit: Integer,
                sort: T::Array[String],
                updated_after: Time,
                updated_at: Time,
                updated_before: Time,
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
