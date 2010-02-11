# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
equipment = Equipment.create([{:name=>"1台目"},{:name=>"2台目"},{:name=>"2台目"},
                              {:name=>"3台目"},{:name=>"3台目"},{:name=>"4台目"},
                              {:name=>"4台目"},{:name=>"締め"},{:name=>"締め"},
                              {:name=>"締め"}, {:name=>"締め"},{:name=>"締め"},
                              {:name=>"タケ"}, {:name=>"桶"},{:name=>"長桶"} ])

members = Member.create([{ :first_name=>"ひでくに", :last_name=>"梶田"},#0
                         { :first_name=>"まきこ", :last_name=>"梶田"},#1
                         { :first_name=>"こうじ", :last_name=>"竹内"},#2
                         { :first_name=>"りえ", :last_name=>"竹内"},#3
                         { :first_name=>"あゆみ", :last_name=>"山田"},#4
                         { :first_name=>"じゅん", :last_name=>"山田"},#5
                         { :first_name=>"ほだか", :last_name=>"山口"},#6
                         { :first_name=>"ゆき", :last_name=>"山口"},#7
                         { :first_name=>"なおや", :last_name=>"横堀"},#8
                         { :first_name=>"まさゆき", :last_name=>"石川"},#9
                         { :first_name=>"まきこ", :last_name=>"佐藤"},#10
                         { :first_name=>"まい", :last_name=>"花房"},#11
                         { :first_name=>"ひろゆき", :last_name=>"渡辺"},#12
                         { :first_name=>"きょうへい", :last_name=>"吉川"},#13
                         { :first_name=>"えみ", :last_name=>"XXX"},#14
                         { :first_name=>"くま", :last_name=>"熊井"},#15
                         { :first_name=>"しずえ", :last_name=>"立石"},#16
                        ])

musics = Music.create([{:name=>"響"}, {:name=>"隆盛"}, {:name=>"乱"},
                       {:name=>"祭"}, {:name=>"打越太鼓"},{:name=>"蒼炎"}])

stages = Stage.create( [{ :name => "餅つき",
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

continities = Continuity.create([{ :stage=>stages.first, :music=>musics[0] },
                   { :stage=>stages.first, :music=>musics[1] },
                   { :stage=>stages.first, :music=>musics[2] },
                   { :stage=>stages.first, :music=>musics[5] }
                  ])

positions = Position.create([{:continuity=>continities[0], :member=>members[0], :equipment=>equipment[0] },
                             {:continuity=>continities[0], :member=>members[1], :equipment=>equipment[1] },
                             {:continuity=>continities[0], :member=>members[2], :equipment=>equipment[2] },
                             {:continuity=>continities[0], :member=>members[3], :equipment=>equipment[3] },
                             {:continuity=>continities[0], :member=>members[4], :equipment=>equipment[4] },
                             {:continuity=>continities[0], :member=>members[5], :equipment=>equipment[7] },
                             {:continuity=>continities[0], :member=>members[6], :equipment=>equipment[8] },
                             {:continuity=>continities[1], :member=>members[7], :equipment=>equipment[0] },
                             {:continuity=>continities[1], :member=>members[8], :equipment=>equipment[1] },
                             {:continuity=>continities[1], :member=>members[9], :equipment=>equipment[2] },
                             {:continuity=>continities[1], :member=>members[10], :equipment=>equipment[3] },
                             {:continuity=>continities[1], :member=>members[11], :equipment=>equipment[4] },
                             {:continuity=>continities[1], :member=>members[12], :equipment=>equipment[7] },
                             {:continuity=>continities[1], :member=>members[13], :equipment=>equipment[8] },
                             {:continuity=>continities[1], :member=>members[0], :equipment=>equipment[0] },
                             {:continuity=>continities[2], :member=>members[1], :equipment=>equipment[1] },
                             {:continuity=>continities[2], :member=>members[2], :equipment=>equipment[2] },
                             {:continuity=>continities[2], :member=>members[3], :equipment=>equipment[3] },
                             {:continuity=>continities[2], :member=>members[4], :equipment=>equipment[4] },
                             {:continuity=>continities[2], :member=>members[5], :equipment=>equipment[7] },
                             {:continuity=>continities[2], :member=>members[6], :equipment=>equipment[8] },
                             {:continuity=>continities[3], :member=>members[7], :equipment=>equipment[0] },
                             {:continuity=>continities[3], :member=>members[8], :equipment=>equipment[1] },
                             {:continuity=>continities[3], :member=>members[9], :equipment=>equipment[2] },
                             {:continuity=>continities[3], :member=>members[10], :equipment=>equipment[3] },
                             {:continuity=>continities[3], :member=>members[11], :equipment=>equipment[4] },
                             {:continuity=>continities[3], :member=>members[12], :equipment=>equipment[7] },
                             {:continuity=>continities[3], :member=>members[13], :equipment=>equipment[8] },
                            ])

