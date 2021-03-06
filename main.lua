-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- 배경화면을 로드한다."
local backgroundImage = display.newImage("res/background.png");
backgroundImage.y = display.contentHeight / 2 + display.statusBarHeight;

-- xml 파일 로드하여, 그에 맞는 컨텐츠를 보여주어야 한다. 보여주어야 할 것은 head, body, foot 로 나뉘어진다.
-- head 부분에서는 장(chapter)와 절(verse)를 나타낸다.
-- body에서는 이미지, 비디오, 오디오, 텍스트 정보를 보여준다. 이때 보여주는 내용은 xml에 기술되어 있다.
-- footer에서는 절(verse)과 페이지(page)간 이동을 할 수 있는 컨트롤러를 보여준다.
-- #programmer Cheechyo, LnS in JejuUniv.

-- HEAD 설정
local head = require("headindex").makeHeadIndex(5,5)

-- TODO body 설정
local body = require("body").makeBodyContents("doc/document.xml")

-- Foot 설정.
local foot = require("foot").makeFootController()
