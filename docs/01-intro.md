# Zotero簡介
Zotero是開源的書目管理軟體。最近選舉，各種候選人抄襲事件層出不窮，可能是他們的老師沒教好，沒有教他們正確管理自己的找的資料，更沒有教如何引用的資料，如何使用書目管理軟體並引用文獻，應該是大一通識必修課。當我們越來越接觸到知識的前沿，看的東西就不再是教科書跟共筆，而是最新的期刊跟研究，要不迷失在知識海中，學好Zotero可以為你的知識庫增加槓桿。

## Zotero的使用Scenario
1. 每天都要看最新醫學期刊，想要存在某個地方日後好整理
2. 想把PDF畫的重點集中在某個地方管理
3. 有一堆老師要求唸的PDF paper，想要幫它們找中繼資料
4. 寫paper要隨時引用文獻

## Zotero v.s. Endnote v.s. Mendeley
* 關於兩個軟體之間誰優誰劣的討論很多，個人三個軟體都用過，但最後還是決定投入Zotero的懷抱，因為實在受不了EndNote的同步速度跟封閉。
* 建議不要因為學校有授權版就順手用下去，雖然它提供了許多隨開即用的功能。
* 但難做筆記，跟封閉的資料庫，讓之後要轉到其他軟體會變得非常困難。下面有一些比較的文章，但既然你已經翻開了這本書，那恭喜你，你做最好的選擇：Zotero。

### 相關比較文章
* [How to Choose: EndNote, Mendeley, or Zotero - Research Guides at Northwestern University](https://libguides.northwestern.edu/howtochoose)
* [Zotero vs Mendeley Comparison - York University Libraries](https://www.library.yorku.ca/web/research-learn/citing-your-work-academic-integrity/citations/zotero-vs-mendeley-comparison/)
* [Home - How to Choose: Zotero, Mendeley, or EndNote - Research Guides at Washington University in St. Louis](https://libguides.wustl.edu/choose)
* [文獻管理軟體比較 Zotero vs EndNote @ 實證外科 :: 痞客邦 ::](https://psdrliu.pixnet.net/blog/post/44215206)
* [如何对比 Zotero 和 Mendeley 两款文献管理的优劣？ - 知乎](https://www.zhihu.com/question/292241691/answer/1808302457)

### Zotero入門文章
* [Zotero - 知乎](https://www.zhihu.com/topic/19791061/hot)
* [文献管理神器 Zotero 学习路径指南 - 知乎](https://zhuanlan.zhihu.com/p/105648602)
* [利用Zotero进行超快捷文献阅读 - 知乎](https://zhuanlan.zhihu.com/p/517879423)
* [“搭建属于自己的文献数据库”——文献管理神器Zotero教程 - 知乎](https://zhuanlan.zhihu.com/p/483446207)
* [資料庫說明與指引 / Zotero 書目管理軟體 | 逢甲大學圖書館](https://web.lib.fcu.edu.tw/library/eresources/edb_guides/zotero.html)
* [官方QA](https://www.zotero.org/support/kb)

## 關於Zotero資料庫

要靈活使用Zotero，首先要知道的是你的檔案都放在什麼地方。我們可以點開安裝好的軟體根目錄，如果是MAC應該會在`~/Zotero`裡，Windows則是在`C:\Users\USER\Zotero`，在裡面有一些檔案是安裝外掛之後才會產生的，有一些是原生的資料庫，在這裡我們主要把焦點放在`zotero.sqlite`這個檔案，它是最重要的一個檔案，記錄著我們所有檔案的各種中繼資料，特別注意，這個檔案不可以被任何官方原生以外的同步軟體同步，因為這樣子會造成軟體的崩壞，很多初次使用的人，想要實現多個裝置之間的同步，就直接把整個資料夾丟進雲端硬碟中，請千萬不要這麼做。

第二個檔案是CSL的檔案夾，裡面有各種類型的引用格式，如果你需要其他的格式，也可以去下列的網址下載。這個資料夾裡面的檔案，也可以複製到其他地方讓我們在其他軟體引用文獻時的參考，最後最重要的就是`storage`這個資料夾，所有條目的附件，特別是PDF檔，都會被存在這個資料夾裡，第一層有由隨機代碼生成的資料夾，裡面才我們的檔案。換句話說：我們的檔案，會被系統用隨機的資料夾放在這個`storage`資料夾裡，當我們想要取用PDF時，Zotero會先找到這個資料夾，再去找裡面的PDF檔，也就是當你如果改了這個亂數名稱，你的檔案就會無法被系統找到。然而這樣的亂數資料夾，對於找到指定的PDF檔非常的困難，因此之後我們會安裝其他的外掛，把我們的PDF文件用比較人類看得懂的方式分門別類整理好，另外這個資料夾，是可以被同步到雲端的，因此如果想實現多機器之間的文件同步，首先就是要對這個資料夾下手，在之後的單元會有詳細的操作方法。

### TL;DR
* 一切照預設，資料夾不要亂動。
* 想同步有其他方法，之後章節介紹，莫急莫慌。

```
.
├── better-bibtex
├── better-bibtex-search.sqlite
├── better-bibtex.sqlite
├── better-bibtex.sqlite-journal
├── csl
├── locate
├── pipes
├── storage
├── styles
├── translators
├── zotero.sqlite
├── zotero.sqlite-journal
└── zotero.sqlite.raycast
```
## 書目（Bibliography）是什麼？
當我們開始管理文獻時，一定會遇到書目這個名詞，以及他的英文Bibliography，它就是記錄著書籍的各種資訊，包含標題、作者、名稱、出版年月日、出版期刊、除了這些以外還會包含Citation Keys、以及DOI。關於DOI是什麼，可以看下面這篇：

* [學術文章裡的DOI到底能幹嘛？ - PanSci 泛科學](https://pansci.asia/archives/69322)

## 引用格式

關於引用格式的詳細討論可以參考一下文章，由於筆者主要是醫療相關行業，所以之後的教學，會以AMA格式來做示範

* [探索英文科學寫作：AMA, MLA, APA差異在哪？ – 我們的基因體時代 Our "Gene"ration](https://weitinglin.com/2019/04/03/%E6%8E%A2%E7%B4%A2%E7%A7%91%E5%AD%B8%E5%AF%AB%E4%BD%9C%EF%BC%9Aama-mla-apa%E5%B7%AE%E7%95%B0%E5%9C%A8%E5%93%AA%EF%BC%9F/)
* [論文引用格式：如何在學術論文中正確的引用文獻？|華樂絲學術英文編修 Wallace Academic Editing](https://www.editing.tw/blog/%E8%8B%B1%E6%96%87%E8%AB%96%E6%96%87%E5%AF%AB%E4%BD%9C%E6%8A%80%E5%B7%A7/%E5%AD%B8%E8%A1%93%E6%96%87%E7%8D%BB%E5%9B%9E%E9%A1%A7%E5%8F%8A%E5%BC%95%E7%94%A8%E6%96%B9%E6%B3%95/%E8%AB%96%E6%96%87%E5%BC%95%E7%94%A8%E6%A0%BC%E5%BC%8F%EF%BC%9A%E5%A6%82%E4%BD%95%E5%9C%A8%E5%AD%B8%E8%A1%93%E8%AB%96%E6%96%87%E4%B8%AD%E6%AD%A3%E7%A2%BA%E7%9A%84%E5%BC%95%E7%94%A8%E6%96%87%E7%8D%BB%EF%BC%9F)
* [書目格式 - BOOK可思議](http://book.lib.ksu.edu.tw/blog/594/%E6%9B%B8%E7%9B%AE%E6%A0%BC%E5%BC%8F)
* [研究論文常見的引用格式 - Wordvice](https://blog.wordvice.com.tw/%E7%A7%91%E7%A0%94%E8%AB%96%E6%96%87%E5%B8%B8%E8%A6%8B%E7%9A%84%E5%BC%95%E7%94%A8%E6%A0%BC%E5%BC%8F/)
