# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ContentLanguageVariation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ContentLanguageVariation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of object to set as primary in multi-language group.
        sig { returns(Integer) }
        attr_accessor :id

        # If True, the variant will not show up in your dashboard, although the post could
        # still be live.
        sig { returns(T::Boolean) }
        attr_accessor :archived_in_dashboard

        # The name of the user who last published the blog post. For posts that haven't
        # been published yet, this property will reflect the user who initially created
        # the draft.
        sig { returns(String) }
        attr_accessor :author_name

        # The GUID of the marketing campaign this page is a part of.
        sig { returns(String) }
        attr_accessor :campaign

        # Name of the associated marketing campaign.
        sig { returns(String) }
        attr_accessor :campaign_name

        # The timestamp (ISO8601 format) when this Blog Post was created.
        sig { returns(Time) }
        attr_accessor :created

        # The internal name of the content language variation.
        sig { returns(String) }
        attr_accessor :name

        # Set this to create a password protected page. Entering the password will be
        # required to view the page.
        sig { returns(String) }
        attr_accessor :password

        sig { returns(T::Array[T.anything]) }
        attr_accessor :public_access_rules

        # Boolean to determine whether or not to respect publicAccessRules.
        sig { returns(T::Boolean) }
        attr_accessor :public_access_rules_enabled

        # The date (ISO8601 format) the page is to be published at.
        sig { returns(Time) }
        attr_accessor :publish_date

        # The path of the this page. This field is appended to the domain to construct the
        # url of this page.
        sig { returns(String) }
        attr_accessor :slug

        # An ENUM describing the current state of this page.
        #
        # Maximum string length: 25
        sig { returns(String) }
        attr_accessor :state

        # The timestamp (ISO8601 format) when this Blog Post was updated.
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
          # ID of object to set as primary in multi-language group.
          id:,
          # If True, the variant will not show up in your dashboard, although the post could
          # still be live.
          archived_in_dashboard:,
          # The name of the user who last published the blog post. For posts that haven't
          # been published yet, this property will reflect the user who initially created
          # the draft.
          author_name:,
          # The GUID of the marketing campaign this page is a part of.
          campaign:,
          # Name of the associated marketing campaign.
          campaign_name:,
          # The timestamp (ISO8601 format) when this Blog Post was created.
          created:,
          # The internal name of the content language variation.
          name:,
          # Set this to create a password protected page. Entering the password will be
          # required to view the page.
          password:,
          public_access_rules:,
          # Boolean to determine whether or not to respect publicAccessRules.
          public_access_rules_enabled:,
          # The date (ISO8601 format) the page is to be published at.
          publish_date:,
          # The path of the this page. This field is appended to the domain to construct the
          # url of this page.
          slug:,
          # An ENUM describing the current state of this page.
          #
          # Maximum string length: 25
          state:,
          # The timestamp (ISO8601 format) when this Blog Post was updated.
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
