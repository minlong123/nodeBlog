-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-14 23:57:05
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_admin`
--

CREATE TABLE `blog_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `blog_admin`
--

INSERT INTO `blog_admin` (`id`, `username`, `password`) VALUES
(4, 'minlong', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_bin NOT NULL,
  `descr` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `cateid` int(20) NOT NULL,
  `pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `time` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `descr`, `content`, `cateid`, `pic`, `time`) VALUES
(8, '该去北上广哭，还是回小城市笑', '该去北上广哭，还是回小城市笑', '&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;表妹即将大学毕业，问我这个过来人有什么干货分享。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;我说我这么有湿意的人，肚子里哪有什么干货。煲鸡汤也不是我擅长，万一你喝多了不仅没治病，还白长一身肥肉，岂不是要怪我。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;其实表妹的纠结很简单，她面前有两个选择：一个是留在北京，在一家中外合资的公司上班，年薪十几万。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;另一个是回到家乡，那个N线城市，有一份公务员的工作等着她，月薪3000+。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;单纯从数字上来看，表妹根本不用纠结，必须是选择留在北京啊。至少将来回家的时候父老乡亲问起，都会用羡慕而崇敬的眼光看着你：这女娃娃在北京，一年挣十几个万，不要太多哦！&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;在大多数人都挣着3000+月薪的情况下，一个年薪十几万的人当然很高大上。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;可是这十几万的年薪，究竟能让你在北京过上什么样的生活？&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;在四环租个一居室，破旧到不能再破旧的小区，简陋到不能再简陋的装修，至少也要两千五百块钱。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;当你跟父老乡亲说起你几乎用了他们一个月的工资租了一间房子时，他们怎么也想象不到，你所住的房子有多小有多破。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;当然，年薪会随着你的工作经历而增长，居住条件也会慢慢改善。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;2&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;我认识一个前辈桃姐，博士生，在北京待了六年，换了三份工作，如今年薪已经达到三十万，在北京买了两套房子，把父母也接了过去。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;这在我认识的留在北京的人中是混的最好的了，人家有学历也有能力，将来还有发展的潜力，当然值得我们这些后辈膜拜。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;可是桃姐在北京的生活也很辛苦。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她的房子是换工作之前买的，离现在的公司非常远，坐半个多小时公交车后才能到达乘坐通勤车的车站，然后还要经过近一个小时的行驶才能到达公司。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;遇上天气恶劣的情况，这个时间就更长了。所以桃姐在冬天的时候，基本上六点多就要出门。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;我问她为什么不买车，她苦笑着说，在北京买车要摇号，买了车以后还要限号，一周能开的时间没几天。再说北京有多堵你又不是不知道，与其自己开着车堵在路上直着急，还不如在通勤车上打个盹。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;这仅仅是住和行的方面，事实上留在在北京这样的城市生活，遇到的问题还有很多。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;不管挣多少钱，不管你有没有能力独自一个人生活，父母还都是真心希望你能好好找个对象，然后结婚生子。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;桃姐条件优秀，按理来说找个条件相当的男朋友毫不费力，可硬是在相亲的道路上奋斗了好几年。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;主要原因是因为工作太忙了。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;每天一早出门，晚上至少八点多才能到家，加班开会是经常事，公司虽然也有年假探亲假制度，可是几乎没有人提出来休。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;每个人都在努力工作，你总是想休假岂不是很可耻？&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;且不说办公室没有合适又可心的对象，就是有，也不敢轻易踏进办公室恋情这个雷区。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;桃姐自己还好，毕竟在北京三十好几还单身的人比比皆是，可是父母们每天都着急上火，不断出入各种相亲角，甚至连去跳广场舞都带着明显的目的性。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;也算是功夫不负有心人，桃姐最后遇到了现在的老公。父母们了却一桩心头大事，又开始催促桃姐赶快生孩子。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;但是桃姐坚决地拒绝了，一来她还想在事业的道路上走得更远，而一旦准备要孩子，一定会休很长一段时间的假，精力和注意力也会受到影响；二来如果孩子出生，那势必面对更多的新问题。光是选择幼儿园和学校这一点就已经令人头疼。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;北京这个地方，孩子想要上一所好的学校，不是光靠有钱就可以的。可是要上不好的学校，桃姐又不甘心。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;所以桃姐迟迟不敢要孩子。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;时间久了，父母觉得失望，在大都市生活表面上看起来很光鲜，实际上不过如此，竟然连孩子都不敢生。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;我问过桃姐，如果当初选择一个小城市去工作生活，幸福感是否会更强烈一点。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她说她倒没这么觉得。她喜欢现在这样充实而快节奏的生活，她觉得这本身就是大都市的魅力所在。要是让她在这个年纪停下来，去享受侍花弄草的慢生活，她会觉得百无聊赖。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;大城市的眼界毕竟与小城市不一样，也许有人会认为现在互联网这么发达，我留在小城市照样身未动心已远。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;可是有些东西用眼睛看和身临其境地去体会是完全不同的，所以我们宁可在小长假挤破脑袋，去别人看腻的地方去看人山人海，也不愿待在家里悠闲地翻看旅游画册。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;照片明明比实景还要美丽，可我们还是想亲自参与其中。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;这就是有些人宁愿住狭窄破旧的小房子，每天疲于奔命地去挤公交地铁，也非要留在大城市的原因。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;3&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;与桃姐相比，我的同学月月正好相反。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她毕业后在北京待了两个月，期间父母去看过她一次，抹着眼泪对她说，外面混得不好就赶紧回家。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她没有桃姐那么高的学历，在北京找了一份月薪5000+的工作，这个薪水显然是买不起房子的，甚至想自己单独租一个一居室都很吃力。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;为了方便上班，她在牛街那里的一个学校租了一个床位，每个月只要几百块钱。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;那个地方治安不太好，她住的房间有八张床，两个月换了好几批室友。大家都是北漂，几个箱子就是自己全部家当，稳定性特别差，彼此之间也多是互相提防。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;床上挂个帘子就当是个人空间，就连洗手间都是公用的，因为无人打扫而特别的脏乱差。北京城的十里繁华流光溢彩似乎跟她并没有什么关系。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;月月有时候躲在自己小小的床上也特别不理解，自己为什么要留在这里吃这样的苦。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;帝都居，大不易。这样没有安全感的生活，不仅剥夺了她的幸福感，更从心理上给了她狠狠一击。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;上大学时的踌躇满志、毕业时的豪情壮志，全都被这两个月颠沛流离的生活给消磨殆尽，所剩下的，只是对自己深深的怀疑。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;正好家乡招公务员，月月毫不犹豫地回去了。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她现在住在一百多平米的房子里，距离自己工作的地方走路只用十分钟，工作很清闲。她老公是她的小学同学，同她一样有一份清闲的工作，两个人有的是时间出去游山玩水。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她提起在北京的那段时光，至今还在庆幸自己及时回来，没有将青春都浪费在疲于奔命之中。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;她想要的就是眼前这种小确幸，而这份小确幸获得的成本要比在北京低得多。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;可是回小城市同样有个问题，她在今后的几十年里，可能会一直做着同一份工作，每天重复着相同的路线。保持这种状态，没有变化、也没有挑战。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;我不知道她在许多年后回首看来，会不会因为自己年轻时没有去放手一搏而感到后悔；当她看到当年一起北漂过的姑娘们，将自己打扮成如女王般精致，出现在某一个电视节目上接受采访时，会不会为自己的半途而废感到遗憾。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;人常常都会不自觉地犯一个错误，看得到面前的风光，看不见背后的沧桑。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;就发展机遇而言，小城市当然和北京无法比。如果那些北漂当年都选择了回家乡去享福，那么如今的荧幕上，会少了一大批耳熟能详的面孔。如今的富豪榜上，也会少了很多个赫赫有名的人物。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;但是每个人的性格和生长轨迹都不相同，判定成功与否的标准也不相同。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;有人想要的是身居高位受人敬仰，有人想要的是银行卡里一长串的数字，有人想要的是安逸闲适的生活。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;所以我无法用既定的经验告诉表妹该如何去选择，我也不希望她听了谁的片面之词就失去了自己做决定的自由。人生路始终要自己走过，才能不留遗憾。我只能将两种选择可能遇到的后果分析给她，让她自己选择。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;选择本身没有什么对错，但你得知道你想要什么样的生活，适合什么样的生活。毕竟人生只有一次，不管是进取的还是安逸的，只要你自己喜欢就好。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify;&quot;&gt;微信添加&amp;nbsp;&lt;strong style=&quot;color: rgb(34, 34, 34);&quot;&gt;weiweiqi2014&lt;/strong&gt;&amp;nbsp;关注微奇文摘，一张图，一哲理，每天一次的心灵之旅。&lt;/p&gt;&lt;p&gt;转载请注明来源，原文链接：&lt;a title=&quot; 该去北上广哭，还是回小城市笑 &quot; href=&quot;http://yispace.net/42805.html&quot; style=&quot;color: rgb(68, 68, 68); text-decoration: none;&quot;&gt;http://yispace.net/42805.html&lt;/a&gt;&lt;/p&gt;&lt;p&gt;标签：&lt;a href=&quot;http://yispace.net/tag/renshengganwu&quot; style=&quot;color: rgb(68, 68, 68); text-decoration: none;&quot;&gt;人生感悟&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;http://yispace.net/tag/jiazhiguan&quot; style=&quot;color: rgb(68, 68, 68); text-decoration: none;&quot;&gt;价值观&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;http://yispace.net/tag/xsshenghuo&quot; style=&quot;color: rgb(68, 68, 68); text-decoration: none;&quot;&gt;现实生活&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;标题：&lt;a href=&quot;http://yispace.net/42805.html&quot; title=&quot;该去北上广哭，还是回小城市笑&quot; style=&quot;color: rgb(1, 64, 141); text-decoration: none;&quot;&gt;该去北上广哭，还是回小城市笑&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;上一篇：&lt;/strong&gt;&amp;nbsp;&lt;a class=&quot;prev-post icon-right&quot; href=&quot;http://yispace.net/42797.html&quot; style=&quot;color: rgb(68, 68, 68); text-decoration: none;&quot;&gt;那些越想炫耀自己的人，往往生活过得越糟糕&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 3, 'Public/Uploads/2018-04-26/5ae0c5115df70.jpg', 1524679953),
(9, '那些越想炫耀自己的人，往往生活过得越糟糕', '那些关乎高价值的东西，总有些人会想方设法地炫耀出来，否则，就好像失去了当初买这个东西的意义.', '&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;那些关乎高价值的东西，总有些人会想方设法地炫耀出来，否则，就好像失去了当初买这个东西的意义。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;其实，到底是东西有价值，还是炫耀的做法有价值？&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;唯有一点值得肯定的是，任何有价值的东西，炫耀出来，便埋没了这个东西的本身所有的价值。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;越炫耀什么，越缺失什么。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;河南卫视曾有一期鉴宝节目，鉴宝对于持宝者来说，是一种厚重的历史感的体验，然而，大多数参加节目的持宝者并非是抱着正视自己宝贝的历史价值的心态去的，往往是冲着最后专家的一个估值。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;有一期栏目便有人因此出了闹剧：一位女子带着一块翡翠观音的赝品前来参与，并在主持人和观众面前大肆炫耀此等宝贝是何等的贵重，甚至价值连城。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;后经主持人的再三追问，这位女子终于坦诚自己的宝贝是由干爹所送，因爱慕虚荣，除此之外也收受了不少名牌包包。经过一番坚定，这位女子的宝贝不但是赝品，还是等级最差的次品，结论一出，引得观众哄堂大笑，最终该女子只能尴尬离场。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;于丹曾说：“一个人越炫耀什么，内心便越缺什么。”也许你当下拥有的东西并不能满足你目前的生活需求，但活在别人的眼光里，便意味着你始终没有快乐可言。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;优秀的人往往无心炫耀。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;朋友圈里，不乏看到五光十色的小资生活，也许在很多人的认知里，朋友圈里的人，似乎一年四季似乎都在度假，看着忙碌的自己，不由羡煞万分。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;其实，别人的实际生活未必如此，或许他们为一次旅游而曾经奋斗不息，或许他们只是为了记录或分享生活的点滴。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;但往往有人却会暗自较劲，并想方设法去炫耀一番，从有这一点想法开始，生活的方向就错了。一个真正懂得生活和见过大风大浪的人，生活通常是越发的朴素与简约。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;杜月笙刚开始出道的时候，特别显摆，穿貂皮大衣，出门前呼后拥，一大群喽啰跟着；在后来成为真正的上海滩一哥之后，他总是一袭青布长衫，一双黑灰色的千层底布鞋，出门也不带保镖，倒成了一副清末文人的模样。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;有句话说：“小时候，快乐很简单；长大后，简单很快乐。”越是正值年轻力壮的人，越是想迫不及待地证明自己的成功，全身名牌似乎才是成功的标配。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;杜月笙是个明白人，也是成功的人。当一个人做到不再需要锦衣貂裘来粉饰自己的身份和地位时，方才算是真正领略到了人生的意义。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;你是否真的拥有，只有你自己最清楚。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;如果说炫耀能够得到强大的存在感，那么获取了短暂的存在感后，内心仍是空虚。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;一个人拥有几斤几两，什么底牌，只有他自己最清楚。那些为了满足一时的虚荣而去炫耀的人，往往有着被扭曲了的自尊心，这是一种性格缺陷。因为他们深知自身能力有限，而又没有自信去获取真正的实力，便只能通过炫耀的方式来向外兜售自己的存在价值。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;事实上，不必要去炫耀那些不切自身实际的东西，同时，你所拥有的东西也不必通过炫耀来体现它的存在感。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;那么，内心最好的状态是什么？&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;是即使你没有豪宅名车，亦能快乐地将生活寄情于山水或书本，这也属于一种富有；拥有爱情，亦不必以秀恩爱的方式去维护，毕竟真诚的东西永远不会轻易离去。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;懂得不以炫耀的方式来取悦自己的人，才是真正的拥有。&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;小说《钢铁是怎样炼成的》里主人公保儿有一句名言说：“人的一生应当这样度过：当回忆往事的时候，他不致于因为虚度年华而痛悔，也不致于因为过去的碌碌无为而惭愧。”&lt;/p&gt;&lt;p style=&quot;margin-top: 20px; margin-bottom: 20px; padding: 0px; text-align: justify; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;, Helvetica, Arial, &amp;quot;Lucida Grande&amp;quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;与其在虚无的荣耀上想方设法地伪装自己，不如踏实地做好自己的工作，抑或看几本好书，那才是一个强者应有的模样。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 3, 'Public/Uploads/2018-04-27/5ae2025eb2390.jpg', 1524761182),
(10, '像我这样的人……', '像我这样的人……', '&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;像我这样的人……&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　最近总是单曲循环的播放着这首《像我这样的人》，听很久都不会觉得腻，或许这首歌最大的魅力就是共鸣。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/shenghuosuibi/shenghuoganwu/20180311/386256.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;&lt;img alt=&quot;像我这样的人……&quot; src=&quot;/ueditor/php/upload/image/20180427/1524763050253026.jpg&quot; width=&quot;375&quot; height=&quot;235&quot;/&gt;&lt;/a&gt;　　比如：&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　“像我这样优秀的人&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　本该灿烂过一生&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　怎么二十多年到头来&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　还在人海里浮沉”&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　学生时代成绩名列前茅，总有那么一门成绩骄傲到炉火纯青，无论怎样的方程式，或者怎样的考点总会被一眼看穿。我们被其他同学艳羡着，同时，自己又在一边窃喜着。在别人眼里，就是优秀。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　说点不自谦的话，高中的时候写作文，运气好，将自己的情绪挥洒在字里行间，总能被语文&lt;a href=&quot;http://www.duwenzhang.com/huati/laoshi/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;老师&lt;/a&gt;选中当做范文，然后我站在讲台上跟同学分享，课后之余，还被同学借走传阅。也就是那个时候，我特别羡慕饮酒作诗的李白，所有的情仇爱恨都可以在诗歌里表达的隐晦而&lt;a href=&quot;http://www.duwenzhang.com/huati/ziyou/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;自由&lt;/a&gt;，洒脱而豪迈。于是，在我的文字里，也有另一种&lt;a href=&quot;http://www.duwenzhang.com/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;故事&lt;/a&gt;，只是他人看不穿，也看不懂，所以会觉得那是一幅画，抽象的画。我想，那时候，或许也是优秀吧。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　曾经也会有许多种想法，想要学习李白，想要成为张小娴，想着也许会阳光明媚的过这一生，可惜，那时候年轻到连想法都天马行空，这一辈子太久了，久到80集的电视连续剧都播放不完，又怎么做到像李白一样满腹经纶，又怎么成为张小娴一样看透所有的&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/aiqingwenzhang/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;爱情&lt;/a&gt;。所以，这20多年以来，还是依然在车水马龙人潮拥挤的城市里浮沉。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　过年回家的时候，跟几个初中同学聚会，大家在谈论起现在的职业时，其中一位男生满脸的自豪和看透一切的表情让我对他印象深刻。无论侃侃而谈的背后是怎样的一种辛酸和付出，但至少在谈天说地的时候他带给我们的是正能量，这种能量无关于年薪是几十万还是十几万甚至是几万，这种心境也是用&lt;a href=&quot;http://www.duwenzhang.com/huati/jinqian/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;金钱&lt;/a&gt;无法衡量的，也许是活的比较老成，我在一边露出了阿姨般的&lt;a href=&quot;http://www.duwenzhang.com/huati/xiaorong/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;笑容&lt;/a&gt;，&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/shenghuosuibi/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;生活&lt;/a&gt;不就是如此的吗？你不对它笑的时候，它不对你笑。你对它笑的时候，也许它对你还是不会笑。但，那又怎样？所谓的灿烂的过一生不就是自己的心安吗？&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　从前，我们在初出茅庐的时候&lt;a href=&quot;http://www.duwenzhang.com/huati/nuli/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;努力&lt;/a&gt;到没有日夜，那时候会获得掌声，会获得证书来证明自己优秀过。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　现在，在人海里浮浮沉沉之后再去&lt;a href=&quot;http://www.duwenzhang.com/huati/yongyou/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;拥有&lt;/a&gt;灿烂的&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/renshengzheli/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;人生&lt;/a&gt;不是更踏实么。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　“像我这样聪明的人&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　早就告别了&lt;a href=&quot;http://www.duwenzhang.com/huati/danchun/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;单纯&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　怎么还是用了一段情&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　去换一身伤痕”&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　单纯，似乎只属于还是个&lt;a href=&quot;http://www.duwenzhang.com/huati/haizi/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;孩子&lt;/a&gt;的时候。比如路上遇见的穿着校服手牵手的高中生，无论是脸庞还是他们所面对的事情，都简单到没有任何的修饰。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　总听过来人说：还是上学好啊，无忧无虑的，你们千万要好好学习。听到这话的时候，我们拼命想要从学校这座“牢笼”里挣脱出来，我们想要像大人一样自由支配的&lt;a href=&quot;http://www.duwenzhang.com/huati/shijian/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;时间&lt;/a&gt;，想做什么做什么，想多晚睡都没人念叨，不写作业也不会挨批评。可是，我们现在却变成了说这句话的人，我们却变成了羡慕学生这个职业的他们了。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　当你再去面对身边的一切的时候，一段用心对待却无果而终的爱情也许会让你一夜长大。一份一人要面对许多人的协调工作也许就会让你看穿每个&lt;a href=&quot;http://www.duwenzhang.com/huati/shanliang/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;善良&lt;/a&gt;面孔背后不为人知的表现力，这种表现力潜移默化的宣布着主权，会让你懊恼为什么自己已经很聪明了却依然走进了别人的圈套。这种表现力风平浪静的侵蚀着你的成果，会让你懊恼为什么有的时候选择会大于努力，而鲜花和掌声于别人而言，为什么来的那么容易。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　所以，成年人的世界里，没有了单纯，因为单纯换来的是一身伤痕。别去否定，因为我们每个人都在&lt;a href=&quot;http://www.duwenzhang.com/huati/yiwang/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;遗忘&lt;/a&gt;单纯。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　“像我这样庸俗的人&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　从不&lt;a href=&quot;http://www.duwenzhang.com/huati/xihuan/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;喜欢&lt;/a&gt;装深沉&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　怎么偶尔听到老歌时&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　忽然也晃了神”&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我们本就是这世界上的凡夫俗子，会吃喝拉撒，会犯错，会动&lt;a href=&quot;http://www.duwenzhang.com/huati/ganqing/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;感情&lt;/a&gt;，会&lt;a href=&quot;http://www.duwenzhang.com/huati/nanguo/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;难过&lt;/a&gt;。所以，不管我们赢得了多少掌声，受到了多少尊重，夜晚褪去光环的时候，我们都是一个嘴巴两只眼睛的凡人。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我喜欢在&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/xinqingriji/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;心情&lt;/a&gt;低落的时候听&lt;a href=&quot;http://www.duwenzhang.com/huati/beishang/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;悲伤&lt;/a&gt;的旋律，然后不言不语的坐在公交车上看风景，因为是一闪而过，就像是所有不愉快一样全部一闪而过，然后在下个路口重新开始。&lt;a href=&quot;http://www.duwenzhang.com/huati/mimang/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;迷茫&lt;/a&gt;的时候，我听《远方》，我写多愁善感的文字。难过的时候，我喜欢独处，一言不发的感受空气里心跳的声音，偶尔也会黯然神伤。放空的时候，我听老歌，老情歌，每一次听都会感叹岁月带给我们的获得和&lt;a href=&quot;http://www.duwenzhang.com/huati/shiqu/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;失去&lt;/a&gt;，会让人陷入一种虚无的境地，会&lt;a href=&quot;http://www.duwenzhang.com/huati/huaijiu/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;怀念&lt;/a&gt;当时听那首歌时的情景，只不过时过境迁，再也没有当年的时光了。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　怀念曾经没有什么不好，你会笑话曾经懵懂傻傻的自己，也会学着和过去不&lt;a href=&quot;http://www.duwenzhang.com/huati/meihao/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;美好&lt;/a&gt;的事情和解。回头看，总会看到不一样的自己，那是因为现在，已经越来越好。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　“像我这样懦弱的人&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　凡事都要留几分&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　怎么曾经也会为了谁&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　想过奋不顾身”&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　提到懦弱，总会想起一个没有精神的男人，一个没有主见的男人，一个没有担当的男人，好像就是这种形象的男人，我们称之为“懦弱”。其实，不只是男人，&lt;a href=&quot;http://www.duwenzhang.com/huati/nvren/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;女人&lt;/a&gt;也会。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我有个&lt;a href=&quot;http://www.duwenzhang.com/huati/pengyou/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;朋友&lt;/a&gt;兢兢业业，碌碌无为。有次她和她的一个朋友共同去参加一个比赛，她的朋友看上了她的一幅画，于是带走拿去参加比赛了，说好的署名写两个人，可是后来，这幅画真的获奖了，署名没有我的这个朋友。她朋友说会去给组委会解释，于是后来有个饭局，她们一起去参加了，我的这个朋友全程没插上几句话，因为所有的功劳全部被她的这个朋友独领风骚了，我的这个朋友不想解释，也似乎解释不清。后来，她们疏远了。我们知道隐情的朋友都明白到底是怎么样的情况，可是不知道的人永远都会觉得这幅画就是署名上的那个人。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　生活有时候就是你百口莫辩的懦弱，它的存在会让你学习善良的背后是碌碌无为的过一生。生活有时候也是你欲言又止的解释，它的存在会让你明白不说不问不念的背后是被误解之后说不清道不明的缠绵悱恻。于是，你失去了奋不顾身的力气，于是你继续迷茫，继续年复一年，日复一日的活着，只是活着。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　正如这首歌的副歌部分：“像我这样迷茫的人，像我这样寻找的人，像我这样碌碌无为的人，像我这样&lt;a href=&quot;http://www.duwenzhang.com/huati/gudan/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;孤单&lt;/a&gt;的人，像我这样傻的人，像我这样不甘&lt;a href=&quot;http://www.duwenzhang.com/huati/pingfan/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;平凡&lt;/a&gt;的人，世界上有多少人？”&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　后来，我们会觉得自己是那个迷茫的人，是那个寻找的人，是那个碌碌无为的人，是那个孤单的，傻的，又不甘平凡的人。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　那你又是哪一个人呢？&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 3, 'Public/Uploads/2018-04-27/5ae209b545ca4.jpg', 1524763061),
(11, '留一点专注的时间给孩子', '留一点专注的时间给孩子', '&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　文｜东东&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　每天早上五点半，我一般都会自动醒来，起床，洗漱，坐在阳台前，打开电脑，深吸一口早晨的空气，写文。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　几乎这已经成为我&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/shenghuosuibi/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;生活&lt;/a&gt;的一部分，所以我将早上这一点&lt;a href=&quot;http://www.duwenzhang.com/huati/shijian/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;时间&lt;/a&gt;看的非常重要，不&lt;a href=&quot;http://www.duwenzhang.com/huati/xiwang/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;希望&lt;/a&gt;被打扰。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　前天早上还是一样，我准备好坐下，正在写文同时，听到房间里&lt;a href=&quot;http://www.duwenzhang.com/huati/nver/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;女儿&lt;/a&gt;在大声叫着&lt;a href=&quot;http://www.duwenzhang.com/huati/fuqin/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;爸爸&lt;/a&gt;。我心想有&lt;a href=&quot;http://www.duwenzhang.com/huati/laopo/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;老婆&lt;/a&gt;和女儿在房间，就没有过多理睬，继续打字。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　过了一会，房间门打开，女儿一脸&lt;a href=&quot;http://www.duwenzhang.com/huati/weixiao/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;微笑&lt;/a&gt;几乎是小跑着从房间里出来。刚刚从睡梦里醒来的缘故，头发还没来得及梳，睡眼惺忪的双眼瞪着我，笑着向我跑来。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　女儿还不到两岁，表达&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/xinqingriji/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;心情&lt;/a&gt;最直观的就是面部的微笑以及不那么娴熟的小跑。尽管小跑起来有些歪歪扭扭，还是可以看出非常激动。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　这时候老婆也出来了，最近老婆在准备一项考试，所以应该是早上很早就起来在房间里看书。现在老婆看到女儿出来，自己拿着书到客厅里看。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　女儿跑到我跟前，好奇的看着电脑屏幕，双手在键盘上双管齐下，拍打键盘的声音噼里啪啦，非常清脆，也非常高兴。我写文刚好一半，被女儿打断了，就希望她先去客厅自己玩会，我写完再陪她玩。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　于是我没有过多和女儿互动，只是机械性的把女儿的小手从键盘上拿开，随便从角落里捡到一个小玩具递给她，把她抱到客厅，然后我就继续坐下来，写文。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　期间我发现她可能发现我的冷淡反应，就干脆拿着我刚才递给她的玩具，围到老婆身边，嘴里不那么连贯地说着：“&lt;a href=&quot;http://www.duwenzhang.com/huati/muqin/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;妈妈&lt;/a&gt;，看”。时而又自己笑起来，时而把玩具在地上弄出声音，想引起老婆的注意。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　当时老婆一边在看书，一遍象征性的回应一下。女儿干脆起来，把双手放在脸上，舌头伸出来收回去。之前女儿看动画片自己学会的这个调皮的动作，每当她做出这个动作，我和老婆都会立刻也做出这个动作回应她，逗她。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　但今天，老婆只简单点点头，眼睛还没&lt;a href=&quot;http://www.duwenzhang.com/huati/likai/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;离开&lt;/a&gt;书本。我看到女儿一个人原地走了一圈，然后停在客厅中央，突然间大哭起来。我立刻跑到女儿身边，抱起她，刚才还挂着微笑的脸蛋此刻由于委屈变得扭曲通红。刚才还有一点激情的双眼此刻不断涌出泪水。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　老婆也过来了，我们俩不断的安慰着她，和她说话，为刚才我们俩的&lt;a href=&quot;http://www.duwenzhang.com/huati/taidu/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;态度&lt;/a&gt;向她道歉。然后女儿转向老婆，喊了一句妈妈，又转向我喊了一句爸爸，立刻&lt;a href=&quot;http://www.duwenzhang.com/huati/kaixin/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;开心&lt;/a&gt;的笑起来。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　&lt;a href=&quot;http://www.duwenzhang.com/huati/haizi/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;孩子&lt;/a&gt;们的&lt;a href=&quot;http://www.duwenzhang.com/huati/xingfu/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;幸福&lt;/a&gt;开心，远比我们想象中要简单的多。幸福的含义或许每个人理解不同，给出的定义不同。我们总觉得，要拼命的赚钱，赚更多的钱，给孩子更多的玩具，更一流的居住环境，更好的营养，这样才是给孩子创造幸福。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　为&lt;a href=&quot;http://www.duwenzhang.com/huati/fumu/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;父母&lt;/a&gt;者，其心都是相似的，谁都希望自己的孩子穿的好，吃的好，&lt;a href=&quot;http://www.duwenzhang.com/huati/kuaile/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;快乐&lt;/a&gt;，开心。只不过我们自己强加定义的幸福，真的是孩子需要的吗？&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我经常在路上看到这样的父母，一边拿着手机，一遍心不在焉的回答着孩子的各种提问，甚至还会表现不耐烦。回老家，更是看到很多年轻父母对孩子的各种“无理取闹”变现的极其厌烦，恨不得孩子一整天都睡觉不吵不闹。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我们到底有多少时间，是专门留给孩子的，专门用心放下手里的一切去好好陪陪孩子的。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我们都太忙了，手机里的&lt;a href=&quot;http://www.duwenzhang.com/huati/pengyou/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;朋友&lt;/a&gt;圈还没有浏览一遍呢，刚出的新剧还没看完呢。新的项目要上线，必须加班加班。周末还要和老朋友聚会呢，带着孩子多不方便。我们感叹，时间咋都不够用呢。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　很多人和我说，上班累成狗，回到家还要被小祖宗折腾，身心疲惫。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　我记得看过一篇&lt;a href=&quot;http://www.duwenzhang.com/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;文章&lt;/a&gt;，大概是说，孩子对不起，我没有那么爱你，至少不如你那么爱我。孩子仅仅是我们&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/renshengzheli/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;人生&lt;/a&gt;世界里的一部分，但是我们却是孩子的整个世界。我想孩子们的幸福没有我们心里规划的那么复杂，仅仅是想多一点我们的陪伴，多一点和我们的互动。这点时间里，请保证是专注的，是专门留给孩子的。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　网上和书店里育儿书籍，视频一大堆。究竟什么样的育儿理念才是最好的，每个父母都要根据自己孩子情况进行摸索学习。我偶尔也看这些育儿经验，但更多的是和女儿实际接触&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/xiaoyuanwenzhang/zhongxuexiaoyuan/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;中学&lt;/a&gt;习&lt;a href=&quot;http://www.duwenzhang.com/wenzhang/shenghuosuibi/chengzhang/&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;成长&lt;/a&gt;。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　孩子的&lt;a href=&quot;http://www.duwenzhang.com/huati/tongnian/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;童年&lt;/a&gt;就这么几年，最需要父母陪伴，参与的时候。每每看到电视上播放的留守儿童那种&lt;a href=&quot;http://www.duwenzhang.com/huati/qipan/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;期盼&lt;/a&gt;的&lt;a href=&quot;http://www.duwenzhang.com/huati/yanshen/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;眼神&lt;/a&gt;，我都非常难受，我理解那些父母们不得已的苦衷，但我更同情那些留守在家里，整天见不到父母的孩子。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　一份没有父母守候陪伴的成长，必定是残缺的，缺乏安全感的，是没有温度的成长。这种残缺，缺乏安全感将会伴随孩子一生。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　所以，有些早上女儿起的早，我就没有更文，这和我之前每日一文的决心有点背离，但我还是想有机会的时候，把这点专注的时间，给女儿。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　如果你也是一个&lt;a href=&quot;http://www.duwenzhang.com/huati/fuqin/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;父亲&lt;/a&gt;或者&lt;a href=&quot;http://www.duwenzhang.com/huati/muqin/index1.html&quot; style=&quot;color: rgb(51, 51, 51); text-decoration: none;&quot;&gt;母亲&lt;/a&gt;，无论你每天的时间里，三分之一，五分之一，甚至十分之一时间是用来陪孩子的，请做到这一点时间的专注性，全身心的和孩子融在一起，暂离手机，暂离电视，暂离平板。&lt;/p&gt;&lt;p style=&quot;font-family: Simsun; font-size: 14px; white-space: normal;&quot;&gt;　　一份专注的陪伴，是给孩子幸福的基础。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 3, 'Public/Uploads/2018-04-27/5ae209d3913d6.jpg', 1524763091),
(12, '11111', '1111', '&lt;p&gt;11111&lt;/p&gt;', 4, 'Public/Uploads/2018-04-27/5ae3473113600.jpg', 1524844337),
(13, 'bbbb', 'bbbbb', '&lt;p&gt;bbbbb&lt;/p&gt;', 3, 'Public/Uploads/2018-04-28/5ae349520a836.jpg', 1524844882);

-- --------------------------------------------------------

--
-- 表的结构 `blog_cate`
--

CREATE TABLE `blog_cate` (
  `id` int(11) NOT NULL,
  `catename` varchar(60) COLLATE utf8_bin NOT NULL,
  `sort` int(20) NOT NULL DEFAULT '20',
  `catdir` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `blog_cate`
--

INSERT INTO `blog_cate` (`id`, `catename`, `sort`, `catdir`) VALUES
(3, '小人', 1, 'Nameo'),
(4, '水电费', 20, 'Namet');

-- --------------------------------------------------------

--
-- 表的结构 `blog_link`
--

CREATE TABLE `blog_link` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `descr` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort` int(20) NOT NULL DEFAULT '20'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `blog_link`
--

INSERT INTO `blog_link` (`id`, `title`, `url`, `descr`, `sort`) VALUES
(4, '优美文章', '优美文章', '优美文章', 20),
(5, '人物传记', '人物传记', '人物传记', 20),
(6, '笑话一览', '笑话一览', '笑话一览', 20),
(7, '小故事', '小故事', '小故事', 20);

-- --------------------------------------------------------

--
-- 表的结构 `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groupname` varchar(500) COLLATE utf8_bin NOT NULL,
  `grouppower` varchar(500) COLLATE utf8_bin NOT NULL,
  `grouptip` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `groups`
--

INSERT INTO `groups` (`id`, `groupname`, `grouppower`, `grouptip`) VALUES
(187, '二哥', '二哥', '1000,1001,1002,1003,1004,1005'),
(186, '耳光好人', '耳光好人', '1001,1002,1004,1005'),
(181, '水电费', '水电费', '1000,1001,1002,1003,1004,1005'),
(182, '水电费', '水电费', '1000,1001,1002,1003,1004,1005'),
(183, '水电费', '水电费', '1001,1002,1004,1005'),
(184, '二个人', '二个人', '1000,1003'),
(185, '个', '个', '1000,1001,1002,1003,1004,1005');

-- --------------------------------------------------------

--
-- 表的结构 `mechanism`
--

CREATE TABLE `mechanism` (
  `id` int(11) NOT NULL,
  `names` varchar(500) COLLATE utf8_bin NOT NULL,
  `bianhao` varchar(500) COLLATE utf8_bin NOT NULL,
  `cons` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `mechanism`
--

INSERT INTO `mechanism` (`id`, `names`, `bianhao`, `cons`) VALUES
(17, '而后人挺好', '而后人挺好', '而后人挺好'),
(14, '而后被推广', '而后被推广', '而后被推广'),
(18, '阖家团圆', '阖家团圆', '阖家团圆'),
(19, '斯蒂芬森', '斯蒂芬森', '斯蒂芬森'),
(20, '的广东省分公司地方', '的广东省分公司地方', '的广东省分公司地方'),
(21, '是的观点是公司的', '是的观点是公司的', '是的观点是公司的');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_admin`
--
ALTER TABLE `blog_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_cate`
--
ALTER TABLE `blog_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_link`
--
ALTER TABLE `blog_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanism`
--
ALTER TABLE `mechanism`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `blog_admin`
--
ALTER TABLE `blog_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `blog_cate`
--
ALTER TABLE `blog_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `blog_link`
--
ALTER TABLE `blog_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- 使用表AUTO_INCREMENT `mechanism`
--
ALTER TABLE `mechanism`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
