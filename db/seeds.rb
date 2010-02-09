# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Stage.create!( [{ :name => "餅つき",
               :place => "中野駅北口ロータリー",
               :start_time => Time.mktime(2010,1,9,10,0),
               :description => "毎年恒例の餅つき"},
               {:name => "サンモール新年会",
               :place => "中野サンプラザ13F",
               :start_time => Time.mktime(2010,1,7,18,0),
               :description => "毎年恒例のサンモール新年会" },
               {:name => "にぎわいフェスタ",
               :place => "サンプラザ前広場",
               :start_time => Time.mktime(2010,3,14,10,0),
               :description => "にぎわいフェスタメイン会場" }]
               )
