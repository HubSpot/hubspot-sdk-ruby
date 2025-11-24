# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::Posts::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.posts.batch.create(
        inputs: [
          {
            id: "id",
            abStatus: :automated_loser_variant,
            abTestId: "abTestId",
            archivedAt: 0,
            archivedInDashboard: true,
            attachedStylesheets: [{foo: {}}],
            authorName: "authorName",
            blogAuthorId: "blogAuthorId",
            campaign: "campaign",
            categoryId: 0,
            contentGroupId: "contentGroupId",
            contentTypeCategory: :"0",
            created: "2019-12-27T18:11:19.117Z",
            createdById: "createdById",
            currentlyPublished: true,
            currentState: :AUTOMATED,
            domain: "domain",
            dynamicPageDataSourceId: "dynamicPageDataSourceId",
            dynamicPageDataSourceType: 0,
            dynamicPageHubDbTableId: "dynamicPageHubDbTableId",
            enableDomainStylesheets: true,
            enableGoogleAmpOutputOverride: true,
            enableLayoutStylesheets: true,
            featuredImage: "featuredImage",
            featuredImageAltText: "featuredImageAltText",
            folderId: "folderId",
            footerHtml: "footerHtml",
            headHtml: "headHtml",
            htmlTitle: "htmlTitle",
            includeDefaultCustomCss: true,
            language: :af,
            layoutSections: {
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
                        angle: {units: "units", value: 0},
                        colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                        sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                      },
                      backgroundImage: {
                        backgroundPosition: "backgroundPosition",
                        backgroundSize: "backgroundSize",
                        imageUrl: "imageUrl"
                      },
                      flexboxPositioning: "flexboxPositioning",
                      forceFullWidthSection: true,
                      maxWidthSectionCentering: 0,
                      verticalAlignment: "verticalAlignment"
                    }
                  }
                ],
                rows: [{}],
                styles: {
                  backgroundColor: {a: 0, b: 0, g: 0, r: 0},
                  backgroundGradient: {
                    angle: {units: "units", value: 0},
                    colors: [{color: {a: 0, b: 0, g: 0, r: 0}}],
                    sideOrCorner: {horizontalSide: "horizontalSide", verticalSide: "verticalSide"}
                  },
                  backgroundImage: {
                    backgroundPosition: "backgroundPosition",
                    backgroundSize: "backgroundSize",
                    imageUrl: "imageUrl"
                  },
                  flexboxPositioning: "flexboxPositioning",
                  forceFullWidthSection: true,
                  maxWidthSectionCentering: 0,
                  verticalAlignment: "verticalAlignment"
                },
                type: "type",
                w: 0,
                x: 0
              }
            },
            linkRelCanonicalUrl: "linkRelCanonicalUrl",
            mabExperimentId: "mabExperimentId",
            metaDescription: "metaDescription",
            name: "name",
            pageExpiryDate: 0,
            pageExpiryEnabled: true,
            pageExpiryRedirectId: 0,
            pageExpiryRedirectUrl: "pageExpiryRedirectUrl",
            password: "password",
            postBody: "postBody",
            postSummary: "postSummary",
            publicAccessRules: [{}],
            publicAccessRulesEnabled: true,
            publishDate: "2019-12-27T18:11:19.117Z",
            publishImmediately: true,
            rssBody: "rssBody",
            rssSummary: "rssSummary",
            slug: "slug",
            state: "state",
            tagIds: [0],
            themeSettingsValues: {foo: {}},
            translatedFromId: "translatedFromId",
            translations: {
              foo: {
                id: 0,
                archivedInDashboard: true,
                authorName: "authorName",
                campaign: "campaign",
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
            updatedById: "updatedById",
            url: "url",
            useFeaturedImage: true,
            widgetContainers: {foo: {}},
            widgets: {foo: {}}
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseBlogPost
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogPost]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseBlogPost::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.batch.update(inputs: [{}])

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseBlogPost
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogPost]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseBlogPost::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.batch.delete(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.posts.batch.get(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseBlogPost
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogPost]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseBlogPost::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
