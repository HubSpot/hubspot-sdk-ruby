# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Blogs::PostsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.create(
        id: "id",
        ab_status: :automated_loser_variant,
        ab_test_id: "abTestId",
        archived_at: 0,
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        blog_author_id: "blogAuthorId",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AGENT_GENERATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_google_amp_output_override: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :aa,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: :deg, value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: :BOTTOM_CENTER,
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: :BOTTOM
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        password: "password",
        post_body: "postBody",
        post_summary: "postSummary",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        rss_body: "rssBody",
        rss_summary: "rssSummary",
        slug: "slug",
        state: "state",
        tag_ids: [0],
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            campaignName: "campaignName",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.update(
        "objectId",
        id: "id",
        ab_status: :automated_loser_variant,
        ab_test_id: "abTestId",
        archived_at: 0,
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        blog_author_id: "blogAuthorId",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AGENT_GENERATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_google_amp_output_override: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :aa,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: :deg, value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: :BOTTOM_CENTER,
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: :BOTTOM
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        password: "password",
        post_body: "postBody",
        post_summary: "postSummary",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        rss_body: "rssBody",
        rss_summary: "rssSummary",
        slug: "slug",
        state: "state",
        tag_ids: [0],
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            campaignName: "campaignName",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.list

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_clone__required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.clone_(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.get("objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_draft_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.get_draft_by_id("objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_authors
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.list_authors

    assert_pattern do
      response => StringIO
    end
  end

  def test_list_tags
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.list_tags

    assert_pattern do
      response => StringIO
    end
  end

  def test_push_live
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.push_live("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_query
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.query

    assert_pattern do
      response => StringIO
    end
  end

  def test_query_authors
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.query_authors

    assert_pattern do
      response => StringIO
    end
  end

  def test_query_tags
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.query_tags

    assert_pattern do
      response => StringIO
    end
  end

  def test_reset_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.reset_draft("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_schedule_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.schedule(id: "id", publish_date: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => nil
    end
  end

  def test_update_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.update_draft(
        "objectId",
        id: "id",
        ab_status: :automated_loser_variant,
        ab_test_id: "abTestId",
        archived_at: 0,
        archived_in_dashboard: true,
        attached_stylesheets: [{foo: {}}],
        author_name: "authorName",
        blog_author_id: "blogAuthorId",
        campaign: "campaign",
        category_id: 0,
        content_group_id: "contentGroupId",
        content_type_category: :"0",
        created: "2019-12-27T18:11:19.117Z",
        created_by_id: "createdById",
        currently_published: true,
        current_state: :AGENT_GENERATED,
        domain: "domain",
        dynamic_page_data_source_id: "dynamicPageDataSourceId",
        dynamic_page_data_source_type: 0,
        dynamic_page_hub_db_table_id: "dynamicPageHubDbTableId",
        enable_domain_stylesheets: true,
        enable_google_amp_output_override: true,
        enable_layout_stylesheets: true,
        featured_image: "featuredImage",
        featured_image_alt_text: "featuredImageAltText",
        folder_id: "folderId",
        footer_html: "footerHtml",
        head_html: "headHtml",
        html_title: "htmlTitle",
        include_default_custom_css: true,
        language: :aa,
        layout_sections: {
          foo: {
            cells: [],
            cssClass: "cssClass",
            cssId: "cssId",
            cssStyle: "cssStyle",
            label: "label",
            name: "name",
            params: {foo: {}},
            rowMetaData: [
              {
                cssClass: "cssClass",
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: :deg, value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: :BOTTOM_CENTER,
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: :BOTTOM
                }
              }
            ],
            rows: [{}],
            styles: {
              backgroundColor: {a: 0, b: 0, g: 0, r: 0},
              backgroundGradient: {
                angle: {units: :deg, value: 0},
                colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                sideOrCorner: {horizontalSide: :CENTER, verticalSide: :BOTTOM}
              },
              backgroundImage: {
                backgroundPosition: "backgroundPosition",
                backgroundSize: "backgroundSize",
                imageUrl: "imageUrl"
              },
              flexboxPositioning: :BOTTOM_CENTER,
              forceFullWidthSection: true,
              maxWidthSectionCentering: 0,
              verticalAlignment: :BOTTOM
            },
            type: "type",
            w: 0,
            x: 0
          }
        },
        link_rel_canonical_url: "linkRelCanonicalUrl",
        mab_experiment_id: "mabExperimentId",
        meta_description: "metaDescription",
        name: "name",
        page_expiry_date: 0,
        page_expiry_enabled: true,
        page_expiry_redirect_id: 0,
        page_expiry_redirect_url: "pageExpiryRedirectUrl",
        password: "password",
        post_body: "postBody",
        post_summary: "postSummary",
        public_access_rules: [{}],
        public_access_rules_enabled: true,
        publish_date: "2019-12-27T18:11:19.117Z",
        publish_immediately: true,
        rss_body: "rssBody",
        rss_summary: "rssSummary",
        slug: "slug",
        state: "state",
        tag_ids: [0],
        theme_settings_values: {foo: {}},
        translated_from_id: "translatedFromId",
        translations: {
          foo: {
            id: 0,
            archivedInDashboard: true,
            authorName: "authorName",
            campaign: "campaign",
            campaignName: "campaignName",
            created: "2019-12-27T18:11:19.117Z",
            name: "name",
            password: "password",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            slug: "slug",
            state: "state",
            updated: "2019-12-27T18:11:19.117Z"
          }
        },
        updated: "2019-12-27T18:11:19.117Z",
        updated_by_id: "updatedById",
        url: "url",
        use_featured_image: true,
        widget_containers: {foo: {}},
        widgets: {foo: {}}
      )

    assert_pattern do
      response => StringIO
    end
  end
end
