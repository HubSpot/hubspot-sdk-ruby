# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::Posts::RevisionsTest < HubspotSDK::Test::ResourceTest
  def test_get_previous_version_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.revisions.get_previous_version("revisionId", object_id_: "objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_previous_versions
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.posts.revisions.get_previous_versions("objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_restore_previous_version_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.revisions.restore_previous_version("revisionId", object_id_: "objectId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_restore_previous_version_to_draft_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.posts.revisions.restore_previous_version_to_draft(0, object_id_: "objectId")

    assert_pattern do
      response => StringIO
    end
  end
end
