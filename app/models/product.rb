class Product < ActiveRecord::Base
  has_attached_file :image, default_url: I18n.t('paperclip.default_url'),
                                    url: I18n.t('paperclip.url'),
                                   path: "#{Rails.root}/app/assets/images/" + I18n.t('paperclip.url'),
                                 styles: { large: "600x600>", medium: "300x300>", small: "100x100>" }

  validates_attachment :image, content_type: { content_type: /\Aimage/ },
                                       size: { :in => 0..2.megabytes }
end
