# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          sig { returns(HubspotSDK::Resources::Cms::Blogs::Posts::Batch) }
          attr_reader :batch

          sig do
            params(
              id: String,
              ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Integer,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              blog_author_id: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state:
                HubspotSDK::Cms::Blogs::BlogPost::CurrentState::OrSymbol,
              domain: String,
              dynamic_page_data_source_id: String,
              dynamic_page_data_source_type: Integer,
              dynamic_page_hub_db_table_id: String,
              enable_domain_stylesheets: T::Boolean,
              enable_google_amp_output_override: T::Boolean,
              enable_layout_stylesheets: T::Boolean,
              featured_image: String,
              featured_image_alt_text: String,
              folder_id: String,
              footer_html: String,
              head_html: String,
              html_title: String,
              include_default_custom_css: T::Boolean,
              language: HubspotSDK::Cms::Blogs::BlogPost::Language::OrSymbol,
              layout_sections:
                T::Hash[Symbol, HubspotSDK::Cms::Blogs::LayoutSection::OrHash],
              link_rel_canonical_url: String,
              mab_experiment_id: String,
              meta_description: String,
              name: String,
              page_expiry_date: Integer,
              page_expiry_enabled: T::Boolean,
              page_expiry_redirect_id: Integer,
              page_expiry_redirect_url: String,
              password: String,
              post_body: String,
              post_summary: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              publish_immediately: T::Boolean,
              rss_body: String,
              rss_summary: String,
              slug: String,
              state: String,
              tag_ids: T::Array[Integer],
              theme_settings_values: T::Hash[Symbol, T.anything],
              translated_from_id: String,
              translations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::Blogs::ContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def create(
            # The unique ID of the blog post.
            id:,
            # The status of the AB test associated with this blog post, if applicable
            #
            # Available options: automated_loser_variant, automated_master, automated_variant,
            # loser_variant, mab_master, mab_variant, master, variant
            ab_status:,
            # The ID of the AB test associated with this page, if applicable
            ab_test_id:,
            # The timestamp (ISO8601 format) when this Blog Post was deleted.
            archived_at:,
            # If True, the post will not show up in your dashboard, although the post could
            # still be live.
            archived_in_dashboard:,
            # List of stylesheets to attach to this blog post. These stylesheets are attached
            # to just this page. Order of precedence is bottom to top, just like in the HTML.
            attached_stylesheets:,
            # The name of the user who last published the blog post. For posts that haven't
            # been published yet, this property will reflect the user who initially created
            # the draft.
            author_name:,
            # The ID of the blog author associated with this post.
            blog_author_id:,
            # The GUID of the marketing campaign the post is associated with.
            campaign:,
            # ID of the object type.
            category_id:,
            # The ID of the post's parent blog.
            content_group_id:,
            # An ENUM descibing the type of this object. Should always be BLOG_POST.
            content_type_category:,
            # The timestamp (ISO8601 format) when this Blog Post was created.
            created:,
            # The ID of the user that created the post.
            created_by_id:,
            # Whether the post is published (true or false)
            currently_published:,
            # A generated ENUM descibing the current state of this Blog Post. Should always
            # match state.
            current_state:,
            # The domain that the post lives on. If null, the post will default to the domain
            # of the parent blog.
            domain:,
            # The identifier for the data source used by the dynamic page.
            dynamic_page_data_source_id:,
            # The type of data source used by the dynamic page.
            dynamic_page_data_source_type:,
            # For dynamic HubDB pages, the ID of the HubDB table this post references.
            dynamic_page_hub_db_table_id:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_domain_stylesheets:,
            # Boolean to allow overriding the AMP settings for the blog.
            enable_google_amp_output_override:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_layout_stylesheets:,
            # The featuredImage of this Blog Post.
            featured_image:,
            # Alt Text of the featuredImage.
            featured_image_alt_text:,
            # Unique identifier of associated folder
            folder_id:,
            # Custom HTML for embed codes, javascript that should be placed before the </body>
            # tag of the page.
            footer_html:,
            # Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
            # page.
            head_html:,
            # The HTML title of the post.
            html_title:,
            # Boolean to determine whether or not the Primary CSS Files should be applied.
            include_default_custom_css:,
            # The explicitly defined ISO 639 language code of the post. If null, the post will
            # default to the language of the parent blog.
            language:,
            # A structure detailing the layout sections of the blog post.
            layout_sections:,
            # Optional override to set the URL to be used in the rel=canonical link tag on the
            # page.
            link_rel_canonical_url:,
            # Unique identifier of the MAB Experiment
            mab_experiment_id:,
            # A description that goes in <meta> tag on the page.
            meta_description:,
            # The internal name of the post.
            name:,
            # The date at which this blog post should expire and begin redirecting to another
            # url or page.
            page_expiry_date:,
            # Boolean describing if the page expiration feature is enabled for this blog post.
            page_expiry_enabled:,
            # The ID of another page this blog post's url should redirect to once this blog
            # post expires. Should only set this or pageExpiryRedirectUrl.
            page_expiry_redirect_id:,
            # The URL this blog post's url should redirect to once it expires. Should only set
            # this or pageExpiryRedirectId.
            page_expiry_redirect_url:,
            # Set this to create a password protected page. Entering the password will be
            # required to view the blog post.
            password:,
            # The HTML of the main post body.
            post_body:,
            # The summary of the blog post that will appear on the main listing page.
            post_summary:,
            # Rules for require member registration to access private content.
            public_access_rules:,
            # Boolean to determine whether or not to respect publicAccessRules.
            public_access_rules_enabled:,
            # The date (ISO8601 format) the blog post is to be published at.
            publish_date:,
            # Set this to true if you want to be published immediately when the schedule
            # publish endpoint is called, and to ignore the publish_date setting.
            publish_immediately:,
            # The contents of the RSS body for this Blog Post.
            rss_body:,
            # The contents of the RSS summary for this Blog Post.
            rss_summary:,
            # The URL slug of the blog post. This field is appended to the domain to construct
            # the url of this post.
            slug:,
            # An enumeration describing the current publish state of the post.
            state:,
            # The IDs of the tags associated with this post.
            tag_ids:,
            # A collection of settings specific to the theme applied to the blog post.
            theme_settings_values:,
            # ID of the primary blog post that this post was translated from.
            translated_from_id:,
            # A map of translations for the blog post, each associated with a specific
            # language variation.
            translations:,
            # The timestamp (ISO8601 format) when this Blog Post was updated.
            updated:,
            # The ID of the user that updated the post.
            updated_by_id:,
            # A generated field representing the URL of this blog post.
            url:,
            # Boolean to determine if this post should use a featured image.
            use_featured_image:,
            # A data structure containing the data for all the modules inside the containers
            # for this post. This will only be populated if the page has widget containers.
            widget_containers:,
            # A data structure containing the data for all the modules for this page.
            widgets:,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              id: String,
              ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Integer,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              blog_author_id: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state:
                HubspotSDK::Cms::Blogs::BlogPost::CurrentState::OrSymbol,
              domain: String,
              dynamic_page_data_source_id: String,
              dynamic_page_data_source_type: Integer,
              dynamic_page_hub_db_table_id: String,
              enable_domain_stylesheets: T::Boolean,
              enable_google_amp_output_override: T::Boolean,
              enable_layout_stylesheets: T::Boolean,
              featured_image: String,
              featured_image_alt_text: String,
              folder_id: String,
              footer_html: String,
              head_html: String,
              html_title: String,
              include_default_custom_css: T::Boolean,
              language: HubspotSDK::Cms::Blogs::BlogPost::Language::OrSymbol,
              layout_sections:
                T::Hash[Symbol, HubspotSDK::Cms::Blogs::LayoutSection::OrHash],
              link_rel_canonical_url: String,
              mab_experiment_id: String,
              meta_description: String,
              name: String,
              page_expiry_date: Integer,
              page_expiry_enabled: T::Boolean,
              page_expiry_redirect_id: Integer,
              page_expiry_redirect_url: String,
              password: String,
              post_body: String,
              post_summary: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              publish_immediately: T::Boolean,
              rss_body: String,
              rss_summary: String,
              slug: String,
              state: String,
              tag_ids: T::Array[Integer],
              theme_settings_values: T::Hash[Symbol, T.anything],
              translated_from_id: String,
              translations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::Blogs::ContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def update(
            # Path param
            object_id_,
            # Body param: The unique ID of the blog post.
            id:,
            # Body param: The status of the AB test associated with this blog post, if
            # applicable
            #
            # Available options: automated_loser_variant, automated_master, automated_variant,
            # loser_variant, mab_master, mab_variant, master, variant
            ab_status:,
            # Body param: The ID of the AB test associated with this page, if applicable
            ab_test_id:,
            # Body param: The timestamp (ISO8601 format) when this Blog Post was deleted.
            archived_at:,
            # Body param: If True, the post will not show up in your dashboard, although the
            # post could still be live.
            archived_in_dashboard:,
            # Body param: List of stylesheets to attach to this blog post. These stylesheets
            # are attached to just this page. Order of precedence is bottom to top, just like
            # in the HTML.
            attached_stylesheets:,
            # Body param: The name of the user who last published the blog post. For posts
            # that haven't been published yet, this property will reflect the user who
            # initially created the draft.
            author_name:,
            # Body param: The ID of the blog author associated with this post.
            blog_author_id:,
            # Body param: The GUID of the marketing campaign the post is associated with.
            campaign:,
            # Body param: ID of the object type.
            category_id:,
            # Body param: The ID of the post's parent blog.
            content_group_id:,
            # Body param: An ENUM descibing the type of this object. Should always be
            # BLOG_POST.
            content_type_category:,
            # Body param: The timestamp (ISO8601 format) when this Blog Post was created.
            created:,
            # Body param: The ID of the user that created the post.
            created_by_id:,
            # Body param: Whether the post is published (true or false)
            currently_published:,
            # Body param: A generated ENUM descibing the current state of this Blog Post.
            # Should always match state.
            current_state:,
            # Body param: The domain that the post lives on. If null, the post will default to
            # the domain of the parent blog.
            domain:,
            # Body param: The identifier for the data source used by the dynamic page.
            dynamic_page_data_source_id:,
            # Body param: The type of data source used by the dynamic page.
            dynamic_page_data_source_type:,
            # Body param: For dynamic HubDB pages, the ID of the HubDB table this post
            # references.
            dynamic_page_hub_db_table_id:,
            # Body param: Boolean to determine whether or not the styles from the template
            # should be applied.
            enable_domain_stylesheets:,
            # Body param: Boolean to allow overriding the AMP settings for the blog.
            enable_google_amp_output_override:,
            # Body param: Boolean to determine whether or not the styles from the template
            # should be applied.
            enable_layout_stylesheets:,
            # Body param: The featuredImage of this Blog Post.
            featured_image:,
            # Body param: Alt Text of the featuredImage.
            featured_image_alt_text:,
            # Body param: Unique identifier of associated folder
            folder_id:,
            # Body param: Custom HTML for embed codes, javascript that should be placed before
            # the </body> tag of the page.
            footer_html:,
            # Body param: Custom HTML for embed codes, javascript, etc. that goes in the
            # <head> tag of the page.
            head_html:,
            # Body param: The HTML title of the post.
            html_title:,
            # Body param: Boolean to determine whether or not the Primary CSS Files should be
            # applied.
            include_default_custom_css:,
            # Body param: The explicitly defined ISO 639 language code of the post. If null,
            # the post will default to the language of the parent blog.
            language:,
            # Body param: A structure detailing the layout sections of the blog post.
            layout_sections:,
            # Body param: Optional override to set the URL to be used in the rel=canonical
            # link tag on the page.
            link_rel_canonical_url:,
            # Body param: Unique identifier of the MAB Experiment
            mab_experiment_id:,
            # Body param: A description that goes in <meta> tag on the page.
            meta_description:,
            # Body param: The internal name of the post.
            name:,
            # Body param: The date at which this blog post should expire and begin redirecting
            # to another url or page.
            page_expiry_date:,
            # Body param: Boolean describing if the page expiration feature is enabled for
            # this blog post.
            page_expiry_enabled:,
            # Body param: The ID of another page this blog post's url should redirect to once
            # this blog post expires. Should only set this or pageExpiryRedirectUrl.
            page_expiry_redirect_id:,
            # Body param: The URL this blog post's url should redirect to once it expires.
            # Should only set this or pageExpiryRedirectId.
            page_expiry_redirect_url:,
            # Body param: Set this to create a password protected page. Entering the password
            # will be required to view the blog post.
            password:,
            # Body param: The HTML of the main post body.
            post_body:,
            # Body param: The summary of the blog post that will appear on the main listing
            # page.
            post_summary:,
            # Body param: Rules for require member registration to access private content.
            public_access_rules:,
            # Body param: Boolean to determine whether or not to respect publicAccessRules.
            public_access_rules_enabled:,
            # Body param: The date (ISO8601 format) the blog post is to be published at.
            publish_date:,
            # Body param: Set this to true if you want to be published immediately when the
            # schedule publish endpoint is called, and to ignore the publish_date setting.
            publish_immediately:,
            # Body param: The contents of the RSS body for this Blog Post.
            rss_body:,
            # Body param: The contents of the RSS summary for this Blog Post.
            rss_summary:,
            # Body param: The URL slug of the blog post. This field is appended to the domain
            # to construct the url of this post.
            slug:,
            # Body param: An enumeration describing the current publish state of the post.
            state:,
            # Body param: The IDs of the tags associated with this post.
            tag_ids:,
            # Body param: A collection of settings specific to the theme applied to the blog
            # post.
            theme_settings_values:,
            # Body param: ID of the primary blog post that this post was translated from.
            translated_from_id:,
            # Body param: A map of translations for the blog post, each associated with a
            # specific language variation.
            translations:,
            # Body param: The timestamp (ISO8601 format) when this Blog Post was updated.
            updated:,
            # Body param: The ID of the user that updated the post.
            updated_by_id:,
            # Body param: A generated field representing the URL of this blog post.
            url:,
            # Body param: Boolean to determine if this post should use a featured image.
            use_featured_image:,
            # Body param: A data structure containing the data for all the modules inside the
            # containers for this post. This will only be populated if the page has widget
            # containers.
            widget_containers:,
            # Body param: A data structure containing the data for all the modules for this
            # page.
            widgets:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def list(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              language:
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
              primary_id: String,
              primary_language:
                HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def attach_to_lang_group(
            # ID of the object to add to a multi-language group.
            id:,
            # Designated language of the object to add to a multi-language group.
            language:,
            # ID of primary language object in multi-language group.
            primary_id:,
            # Primary language of the multi-language group.
            primary_language: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              clone_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def clone_(
            # ID of the object to be cloned.
            id:,
            # Name of the cloned object.
            clone_name: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def create_lang_variation(
            # ID of blog post to clone.
            id:,
            # Target language of new variant.
            language: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def detach_from_lang_group(
            # ID of the object to remove from a multi-language group.
            id:,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def get(
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def get_draft_by_id(object_id_, request_options: {})
          end

          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def get_previous_version(
            revision_id,
            object_id_:,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def get_previous_versions(
            object_id_,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def push_live(object_id_, request_options: {})
          end

          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def reset_draft(object_id_, request_options: {})
          end

          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def restore_previous_version(
            revision_id,
            object_id_:,
            request_options: {}
          )
          end

          sig do
            params(
              revision_id: Integer,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def restore_previous_version_to_draft(
            revision_id,
            object_id_:,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              publish_date: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def schedule(
            # The ID of the object to be scheduled.
            id:,
            # The date the object should transition from scheduled to published.
            publish_date:,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def set_lang_primary(
            # ID of object to set as primary in multi-language group.
            id:,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              id: String,
              ab_status: HubspotSDK::Cms::Blogs::BlogPost::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Integer,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              blog_author_id: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Blogs::BlogPost::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state:
                HubspotSDK::Cms::Blogs::BlogPost::CurrentState::OrSymbol,
              domain: String,
              dynamic_page_data_source_id: String,
              dynamic_page_data_source_type: Integer,
              dynamic_page_hub_db_table_id: String,
              enable_domain_stylesheets: T::Boolean,
              enable_google_amp_output_override: T::Boolean,
              enable_layout_stylesheets: T::Boolean,
              featured_image: String,
              featured_image_alt_text: String,
              folder_id: String,
              footer_html: String,
              head_html: String,
              html_title: String,
              include_default_custom_css: T::Boolean,
              language: HubspotSDK::Cms::Blogs::BlogPost::Language::OrSymbol,
              layout_sections:
                T::Hash[Symbol, HubspotSDK::Cms::Blogs::LayoutSection::OrHash],
              link_rel_canonical_url: String,
              mab_experiment_id: String,
              meta_description: String,
              name: String,
              page_expiry_date: Integer,
              page_expiry_enabled: T::Boolean,
              page_expiry_redirect_id: Integer,
              page_expiry_redirect_url: String,
              password: String,
              post_body: String,
              post_summary: String,
              public_access_rules: T::Array[T.anything],
              public_access_rules_enabled: T::Boolean,
              publish_date: Time,
              publish_immediately: T::Boolean,
              rss_body: String,
              rss_summary: String,
              slug: String,
              state: String,
              tag_ids: T::Array[Integer],
              theme_settings_values: T::Hash[Symbol, T.anything],
              translated_from_id: String,
              translations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::Blogs::ContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def update_draft(
            object_id_,
            # The unique ID of the blog post.
            id:,
            # The status of the AB test associated with this blog post, if applicable
            #
            # Available options: automated_loser_variant, automated_master, automated_variant,
            # loser_variant, mab_master, mab_variant, master, variant
            ab_status:,
            # The ID of the AB test associated with this page, if applicable
            ab_test_id:,
            # The timestamp (ISO8601 format) when this Blog Post was deleted.
            archived_at:,
            # If True, the post will not show up in your dashboard, although the post could
            # still be live.
            archived_in_dashboard:,
            # List of stylesheets to attach to this blog post. These stylesheets are attached
            # to just this page. Order of precedence is bottom to top, just like in the HTML.
            attached_stylesheets:,
            # The name of the user who last published the blog post. For posts that haven't
            # been published yet, this property will reflect the user who initially created
            # the draft.
            author_name:,
            # The ID of the blog author associated with this post.
            blog_author_id:,
            # The GUID of the marketing campaign the post is associated with.
            campaign:,
            # ID of the object type.
            category_id:,
            # The ID of the post's parent blog.
            content_group_id:,
            # An ENUM descibing the type of this object. Should always be BLOG_POST.
            content_type_category:,
            # The timestamp (ISO8601 format) when this Blog Post was created.
            created:,
            # The ID of the user that created the post.
            created_by_id:,
            # Whether the post is published (true or false)
            currently_published:,
            # A generated ENUM descibing the current state of this Blog Post. Should always
            # match state.
            current_state:,
            # The domain that the post lives on. If null, the post will default to the domain
            # of the parent blog.
            domain:,
            # The identifier for the data source used by the dynamic page.
            dynamic_page_data_source_id:,
            # The type of data source used by the dynamic page.
            dynamic_page_data_source_type:,
            # For dynamic HubDB pages, the ID of the HubDB table this post references.
            dynamic_page_hub_db_table_id:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_domain_stylesheets:,
            # Boolean to allow overriding the AMP settings for the blog.
            enable_google_amp_output_override:,
            # Boolean to determine whether or not the styles from the template should be
            # applied.
            enable_layout_stylesheets:,
            # The featuredImage of this Blog Post.
            featured_image:,
            # Alt Text of the featuredImage.
            featured_image_alt_text:,
            # Unique identifier of associated folder
            folder_id:,
            # Custom HTML for embed codes, javascript that should be placed before the </body>
            # tag of the page.
            footer_html:,
            # Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
            # page.
            head_html:,
            # The HTML title of the post.
            html_title:,
            # Boolean to determine whether or not the Primary CSS Files should be applied.
            include_default_custom_css:,
            # The explicitly defined ISO 639 language code of the post. If null, the post will
            # default to the language of the parent blog.
            language:,
            # A structure detailing the layout sections of the blog post.
            layout_sections:,
            # Optional override to set the URL to be used in the rel=canonical link tag on the
            # page.
            link_rel_canonical_url:,
            # Unique identifier of the MAB Experiment
            mab_experiment_id:,
            # A description that goes in <meta> tag on the page.
            meta_description:,
            # The internal name of the post.
            name:,
            # The date at which this blog post should expire and begin redirecting to another
            # url or page.
            page_expiry_date:,
            # Boolean describing if the page expiration feature is enabled for this blog post.
            page_expiry_enabled:,
            # The ID of another page this blog post's url should redirect to once this blog
            # post expires. Should only set this or pageExpiryRedirectUrl.
            page_expiry_redirect_id:,
            # The URL this blog post's url should redirect to once it expires. Should only set
            # this or pageExpiryRedirectId.
            page_expiry_redirect_url:,
            # Set this to create a password protected page. Entering the password will be
            # required to view the blog post.
            password:,
            # The HTML of the main post body.
            post_body:,
            # The summary of the blog post that will appear on the main listing page.
            post_summary:,
            # Rules for require member registration to access private content.
            public_access_rules:,
            # Boolean to determine whether or not to respect publicAccessRules.
            public_access_rules_enabled:,
            # The date (ISO8601 format) the blog post is to be published at.
            publish_date:,
            # Set this to true if you want to be published immediately when the schedule
            # publish endpoint is called, and to ignore the publish_date setting.
            publish_immediately:,
            # The contents of the RSS body for this Blog Post.
            rss_body:,
            # The contents of the RSS summary for this Blog Post.
            rss_summary:,
            # The URL slug of the blog post. This field is appended to the domain to construct
            # the url of this post.
            slug:,
            # An enumeration describing the current publish state of the post.
            state:,
            # The IDs of the tags associated with this post.
            tag_ids:,
            # A collection of settings specific to the theme applied to the blog post.
            theme_settings_values:,
            # ID of the primary blog post that this post was translated from.
            translated_from_id:,
            # A map of translations for the blog post, each associated with a specific
            # language variation.
            translations:,
            # The timestamp (ISO8601 format) when this Blog Post was updated.
            updated:,
            # The ID of the user that updated the post.
            updated_by_id:,
            # A generated field representing the URL of this blog post.
            url:,
            # Boolean to determine if this post should use a featured image.
            use_featured_image:,
            # A data structure containing the data for all the modules inside the containers
            # for this post. This will only be populated if the page has widget containers.
            widget_containers:,
            # A data structure containing the data for all the modules for this page.
            widgets:,
            request_options: {}
          )
          end

          sig do
            params(
              languages:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::UpdateLanguagesRequestVNext::Language::OrSymbol
                ],
              primary_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def update_langs(
            # Map of object IDs to associated languages of object in the multi-language group.
            languages:,
            # ID of the primary object in the multi-language group.
            primary_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
