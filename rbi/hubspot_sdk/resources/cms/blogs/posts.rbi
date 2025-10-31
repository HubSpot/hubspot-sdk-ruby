# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          sig { returns(HubspotSDK::Resources::Cms::Blogs::Posts::Batch) }
          attr_reader :batch

          # Create a new blog post, specifying its content in the request body.
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
                T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
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
                  HubspotSDK::Cms::ContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def create(
            # The unique ID of the blog post.
            id:,
            ab_status:,
            ab_test_id:,
            # The timestamp (ISO8601 format) when this Blog Post was deleted.
            archived_at:,
            # If True, the post will not show up in your dashboard, although the post could
            # still be live.
            archived_in_dashboard:,
            # List of stylesheets to attach to this blog post. These stylesheets are attached
            # to just this page. Order of precedence is bottom to top, just like in the HTML.
            attached_stylesheets:,
            # The name of the blog author associated with the post.
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
            created:,
            # The ID of the user that created the post.
            created_by_id:,
            currently_published:,
            # A generated ENUM descibing the current state of this Blog Post. Should always
            # match state.
            current_state:,
            # The domain that the post lives on. If null, the post will default to the domain
            # of the parent blog.
            domain:,
            dynamic_page_data_source_id:,
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
            layout_sections:,
            # Optional override to set the URL to be used in the rel=canonical link tag on the
            # page.
            link_rel_canonical_url:,
            mab_experiment_id:,
            # A description that goes in <meta> tag on the page.
            meta_description:,
            # The internal name of the post.
            name:,
            page_expiry_date:,
            page_expiry_enabled:,
            page_expiry_redirect_id:,
            page_expiry_redirect_url:,
            # Set this to create a password protected page. Entering the password will be
            # required to view the page.
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
            theme_settings_values:,
            # ID of the primary blog post that this post was translated from.
            translated_from_id:,
            translations:,
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

          # Partially updates a single blog post by ID. You only need to specify the values
          # that you want to update.
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
                T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
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
                  HubspotSDK::Cms::ContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def update(
            # Path param: The ID of the blog post to update.
            object_id_,
            # Body param: The unique ID of the blog post.
            id:,
            # Body param:
            ab_status:,
            # Body param:
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
            # Body param: The name of the blog author associated with the post.
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
            # Body param:
            created:,
            # Body param: The ID of the user that created the post.
            created_by_id:,
            # Body param:
            currently_published:,
            # Body param: A generated ENUM descibing the current state of this Blog Post.
            # Should always match state.
            current_state:,
            # Body param: The domain that the post lives on. If null, the post will default to
            # the domain of the parent blog.
            domain:,
            # Body param:
            dynamic_page_data_source_id:,
            # Body param:
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
            # Body param:
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
            # Body param:
            layout_sections:,
            # Body param: Optional override to set the URL to be used in the rel=canonical
            # link tag on the page.
            link_rel_canonical_url:,
            # Body param:
            mab_experiment_id:,
            # Body param: A description that goes in <meta> tag on the page.
            meta_description:,
            # Body param: The internal name of the post.
            name:,
            # Body param:
            page_expiry_date:,
            # Body param:
            page_expiry_enabled:,
            # Body param:
            page_expiry_redirect_id:,
            # Body param:
            page_expiry_redirect_url:,
            # Body param: Set this to create a password protected page. Entering the password
            # will be required to view the page.
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
            # Body param:
            theme_settings_values:,
            # Body param: ID of the primary blog post that this post was translated from.
            translated_from_id:,
            # Body param:
            translations:,
            # Body param:
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
            # Query param: Specifies whether to update deleted blog posts. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Retrieve all blog posts, with paging and filtering options. This method would be
          # useful for an integration that ingests posts and suggests edits.
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
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::Cms::Blogs::BlogPost]
            )
          end
          def list(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return deleted blog posts. Defaults to `false`.
            archived: nil,
            # Only return blog posts created after the specified time.
            created_after: nil,
            # Only return blog posts created at exactly the specified time.
            created_at: nil,
            # Only return blog posts created before the specified time.
            created_before: nil,
            # The maximum number of results to return. Default is 20.
            limit: nil,
            property: nil,
            # Specifies which fields to use for sorting results. Valid fields are `createdAt`
            # (default), `name`, `updatedAt`, `createdBy`, `updatedBy`.
            sort: nil,
            # Only return blog posts last updated after the specified time.
            updated_after: nil,
            # Only return blog posts last updated at exactly the specified time.
            updated_at: nil,
            # Only return blog posts last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Delete a blog post by ID.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the blog post to delete.
            object_id_,
            # Whether to return only results that have been deleted.
            archived: nil,
            request_options: {}
          )
          end

          # Attach a blog post to a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
          sig do
            params(
              id: String,
              language: String,
              primary_id: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
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

          # Clone a blog post, making a copy of it in a new blog post.
          sig do
            params(
              id: String,
              clone_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def clone_(
            # ID of the object to be cloned.
            id:,
            # Name of the cloned object.
            clone_name: nil,
            request_options: {}
          )
          end

          # Create a new language variation from an existing blog post
          sig do
            params(
              id: String,
              language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def create_lang_variation(
            # ID of blog post to clone.
            id:,
            # Target language of new variant.
            language: nil,
            request_options: {}
          )
          end

          # Detach a blog post from a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def detach_from_lang_group(
            # ID of the object to remove from a multi-language group.
            id:,
            request_options: {}
          )
          end

          # Retrieve a blog post by the post ID.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def get(
            # The ID of the blog post to retrieve.
            object_id_,
            # Specifies whether to return deleted blog posts. Defaults to `false`.
            archived: nil,
            # Specific properties to return.
            property: nil,
            request_options: {}
          )
          end

          # Retrieve the full draft version of a blog post.
          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def get_draft_by_id(
            # The ID of the blog post to retrieve the draft of.
            object_id_,
            request_options: {}
          )
          end

          # Retrieve a previous version of a blog post.
          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::VersionBlogPost)
          end
          def get_previous_version(
            # The ID of the version to retrieve.
            revision_id,
            # The ID of the blog post.
            object_id_:,
            request_options: {}
          )
          end

          # Retrieve all the previous versions of a blog post.
          sig do
            params(
              object_id_: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Cms::Blogs::VersionBlogPost
              ]
            )
          end
          def get_previous_versions(
            # The ID of the blog post to retrieve previous versions of.
            object_id_,
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            request_options: {}
          )
          end

          # Publish the draft version of the blog post, sending its content to the live
          # page.
          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def push_live(
            # The ID of the post to publish.
            object_id_,
            request_options: {}
          )
          end

          # Discard all drafted content, resetting the draft to contain the content in the
          # currently published version.
          sig do
            params(
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def reset_draft(
            # The ID of the blog post to reset.
            object_id_,
            request_options: {}
          )
          end

          # Restores a blog post to one of its previous versions.
          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def restore_previous_version(
            # The ID of the version to restore the blog post to.
            revision_id,
            # The ID of the blog post.
            object_id_:,
            request_options: {}
          )
          end

          # Takes a specified version of a blog post, sets it as the new draft version of
          # the blog post.
          sig do
            params(
              revision_id: Integer,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def restore_previous_version_to_draft(
            # The ID of the version to restore the blog post to.
            revision_id,
            # The ID of the blog post.
            object_id_:,
            request_options: {}
          )
          end

          # Schedule a blog post to be published at a specified time.
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

          # Set the primary language of a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content)
          # to the language of the provided post (specified as an ID in the request body)
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

          # Partially updates the draft version of a single blog post by ID. You only need
          # to specify the values that you want to update.
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
                T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
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
                  HubspotSDK::Cms::ContentLanguageVariation::OrHash
                ],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogPost)
          end
          def update_draft(
            # The ID of the blog post to update the draft of.
            object_id_,
            # The unique ID of the blog post.
            id:,
            ab_status:,
            ab_test_id:,
            # The timestamp (ISO8601 format) when this Blog Post was deleted.
            archived_at:,
            # If True, the post will not show up in your dashboard, although the post could
            # still be live.
            archived_in_dashboard:,
            # List of stylesheets to attach to this blog post. These stylesheets are attached
            # to just this page. Order of precedence is bottom to top, just like in the HTML.
            attached_stylesheets:,
            # The name of the blog author associated with the post.
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
            created:,
            # The ID of the user that created the post.
            created_by_id:,
            currently_published:,
            # A generated ENUM descibing the current state of this Blog Post. Should always
            # match state.
            current_state:,
            # The domain that the post lives on. If null, the post will default to the domain
            # of the parent blog.
            domain:,
            dynamic_page_data_source_id:,
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
            layout_sections:,
            # Optional override to set the URL to be used in the rel=canonical link tag on the
            # page.
            link_rel_canonical_url:,
            mab_experiment_id:,
            # A description that goes in <meta> tag on the page.
            meta_description:,
            # The internal name of the post.
            name:,
            page_expiry_date:,
            page_expiry_enabled:,
            page_expiry_redirect_id:,
            page_expiry_redirect_url:,
            # Set this to create a password protected page. Entering the password will be
            # required to view the page.
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
            theme_settings_values:,
            # ID of the primary blog post that this post was translated from.
            translated_from_id:,
            translations:,
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

          # Explicitly set new languages for each post in a
          # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
          sig do
            params(
              languages: T::Hash[Symbol, String],
              primary_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
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
