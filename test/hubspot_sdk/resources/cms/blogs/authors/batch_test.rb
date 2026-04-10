# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Blogs::Authors::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.authors.batch.create(
        inputs: [
          {
            id: "id",
            avatar: "avatar",
            bio: "bio",
            created: "2019-12-27T18:11:19.117Z",
            deletedAt: "2019-12-27T18:11:19.117Z",
            displayName: "displayName",
            email: "email",
            facebook: "facebook",
            fullName: "fullName",
            language: :aa,
            linkedin: "linkedin",
            name: "name",
            slug: "slug",
            translatedFromId: 0,
            twitter: "twitter",
            updated: "2019-12-27T18:11:19.117Z",
            website: "website"
          }
        ]
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.batch.update(inputs: [{}])

    assert_pattern do
      response => StringIO
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.batch.delete(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.authors.batch.get(inputs: ["string"])

    assert_pattern do
      response => StringIO
    end
  end
end
