# JapaneseAssociatedKeywords

日本語の関連語を取得するやつ

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'japanese_associated_keywords'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install japanese_associated_keywords

## Usage

$ irb

2.2.0 :001 > require 'japanese_associated_keywords'

 => true

2.2.0 :002 > p JapaneseAssociatedKeywords.get('人生')

["文学じゃないかもしれない症候群", "CLANNAD", "ナゴムレコード", "二文字キーワード", "リスト", "から", "CLANNADは人生", "バンド", "新崎人生", "死ぬ", "まれ", "電気グルーヴ", "「人生」", "定義", "もの"]

 => ["文学じゃないかもしれない症候群", "CLANNAD", "ナゴムレコード", "二文字キーワード", "リスト", "から", "CLANNADは人生", "バンド", "新崎人生", "死ぬ", "まれ", "電気グルーヴ", "「人生」", "定義", "もの"] 


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/japanese_associated_keywords/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
