# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# メンバーテーブル情報を入れたcsv読み込み
require "csv"
#csvファイルを扱うためのgemを読み込む

CSV.foreach('db/members.csv') do |row|
#foreachは、ファイル（hoge.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される

Member.create(:name => row[0], :kana => row[1], :generation => row[2], :image_id => row[3], :birthday => row[4])
#membersテーブルの各カラムに、各行のn番目の値を代入している。

end