# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicRssEmailDetails < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicRssEmailDetails,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :blog_email_type

        sig { params(blog_email_type: String).void }
        attr_writer :blog_email_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :blog_image_max_width

        sig { params(blog_image_max_width: Integer).void }
        attr_writer :blog_image_max_width

        sig { returns(T.nilable(String)) }
        attr_reader :blog_layout

        sig { params(blog_layout: String).void }
        attr_writer :blog_layout

        sig { returns(T.nilable(String)) }
        attr_reader :hubspot_blog_id

        sig { params(hubspot_blog_id: String).void }
        attr_writer :hubspot_blog_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :max_entries

        sig { params(max_entries: Integer).void }
        attr_writer :max_entries

        sig { returns(T.nilable(String)) }
        attr_reader :rss_entry_template

        sig { params(rss_entry_template: String).void }
        attr_writer :rss_entry_template

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :timing

        sig { params(timing: T::Hash[Symbol, T.anything]).void }
        attr_writer :timing

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_headline_as_subject

        sig { params(use_headline_as_subject: T::Boolean).void }
        attr_writer :use_headline_as_subject

        # RSS related data if it is a blog or rss email.
        sig do
          params(
            blog_email_type: String,
            blog_image_max_width: Integer,
            blog_layout: String,
            hubspot_blog_id: String,
            max_entries: Integer,
            rss_entry_template: String,
            timing: T::Hash[Symbol, T.anything],
            url: String,
            use_headline_as_subject: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          blog_email_type: nil,
          blog_image_max_width: nil,
          blog_layout: nil,
          hubspot_blog_id: nil,
          max_entries: nil,
          rss_entry_template: nil,
          timing: nil,
          url: nil,
          use_headline_as_subject: nil
        )
        end

        sig do
          override.returns(
            {
              blog_email_type: String,
              blog_image_max_width: Integer,
              blog_layout: String,
              hubspot_blog_id: String,
              max_entries: Integer,
              rss_entry_template: String,
              timing: T::Hash[Symbol, T.anything],
              url: String,
              use_headline_as_subject: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
