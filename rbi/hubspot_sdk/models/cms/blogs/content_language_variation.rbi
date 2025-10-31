# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class ContentLanguageVariation < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::ContentLanguageVariation,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :id

          sig { returns(T::Boolean) }
          attr_accessor :archived_in_dashboard

          sig { returns(String) }
          attr_accessor :author_name

          sig { returns(String) }
          attr_accessor :campaign

          sig { returns(String) }
          attr_accessor :campaign_name

          sig { returns(Time) }
          attr_accessor :created

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :password

          sig { returns(T::Array[T.anything]) }
          attr_accessor :public_access_rules

          sig { returns(T::Boolean) }
          attr_accessor :public_access_rules_enabled

          sig { returns(Time) }
          attr_accessor :publish_date

          sig { returns(String) }
          attr_accessor :slug

          sig { returns(String) }
          attr_accessor :state

          sig { returns(Time) }
          attr_accessor :updated

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :tag_ids

          sig { params(tag_ids: T::Array[Integer]).void }
          attr_writer :tag_ids

          sig do
            params(
              id: Integer,
              archived_in_dashboard: T::Boolean,
              author_name: String,
              campaign: String,
              campaign_name: String,
              created: Time,
              name: String,
              password: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              slug: String,
              state: String,
              updated: Time,
              tag_ids: T::Array[Integer]
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            archived_in_dashboard:,
            author_name:,
            campaign:,
            campaign_name:,
            created:,
            name:,
            password:,
            public_access_rules:,
            public_access_rules_enabled:,
            publish_date:,
            slug:,
            state:,
            updated:,
            tag_ids: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                archived_in_dashboard: T::Boolean,
                author_name: String,
                campaign: String,
                campaign_name: String,
                created: Time,
                name: String,
                password: String,
                public_access_rules: T::Array[T.anything],
                public_access_rules_enabled: T::Boolean,
                publish_date: Time,
                slug: String,
                state: String,
                updated: Time,
                tag_ids: T::Array[Integer]
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
