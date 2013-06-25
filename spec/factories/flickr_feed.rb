FactoryGirl.define do
  factory :flickr_feed do
    title "Title"
    link "http://www.flickr.com/photos/dbt001/9131916794/"
    date_taken Date.today - 2.day
    media "http://farm4.staticflickr.com/3731/9131916794_1a1be1d8d1_m.jpg"
    description '<p><a href=\"http://www.flickr.com/people/dbt001/\">DavidBThomas</a> posted a photo:</p> <p><a href=\"http://www.flickr.com/photos/dbt001/9131916794/\" title=\"art appreciation, Tate Modern\"><img src=\"http://farm4.staticflickr.com/3731/9131916794_1a1be1d8d1_m.jpg\" width=\"180\" height=\"240\" alt=\"art appreciation, Tate Modern\" /></a></p>'
    published Date.today - 1.day
    author "nobody@flickr.com (DavidBThomas)"
    author_id "10317686@N07"
    tags ""
  end
end