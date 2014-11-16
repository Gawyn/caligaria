class Content < ActiveRecord::Base
  belongs_to :author, class_name: User

  scope :published, -> { where(published: true) }

  before_validation :set_url!, on: :create

  mount_uploader :cover, CoverUploader

  def to_param
    url
  end

  def html_body
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(body).html_safe
  end

  private

  def set_url!
    self.url ||= title.parameterize
  end
end
