#!/usr/bin/perl

use HTTP::Request;
use LWP::UserAgent;
use Term::ANSIColor;
my @c = ("\033[0;30m", "\033[1;30m", "\033[0;31m", "\033[0;32m", "\033[0;33m", "\033[1;33m", "\033[0;34m", "\033[0;35m", "\033[0;36m", "\033[1;36m", "\033[0;37m", "\033[1;37m", "\033[1;34m");
my @ESLOGAN=("A day without laughter is a day wasted", "Life is really simple, but we insist on making it complicated.", "We do not remember days, we remember moments.", "Be the Change That You Wish To See In The World", "! Keep Calm And love me !", "You look better today !", "Float like a butterfly, sting like a bee.", "If it were not for hopes, the heart would break.","Say 1.2.3 viva l'Algerie");

system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('cls');
system('title  Control Admin Finder');
system "color c";
print "
    ____  ________       __   __  ____ __       __   __________ 
   / __ )/ / ____ \_____/ /__/ / / / // / _____/ /__/ ____/ __ \
  / __  / / / __ `/ ___/ //_/ /_/ / // /_/ ___/ //_/ __/ / /_/ /
 / /_/ / / / /_/ / /__/ ,< / __  /__  __/ /__/ ,< / /___/ _, _/ 
/_____/_/\ \__,_/\___/_/|_/_/ /_/  /_/  \___/_/|_/_____/_/ |_|  
          \____/                                                

$c[2] #$ESLOGAN[rand @ESLOGAN] $c[11]                                               
                                               ";

print "\n";
print $c[9]. " Add Website Target $c[11]. ツ ";
print "\n";
print $c[9]. "Ex: www.Usa.com or www.Usa.com/path";
print "\n";
print "\n";
print $c[5]. " -> ";

$site=<STDIN>;
chomp $site;

if($site !~ /http:\/\//) { $site = "http://$site/"; };

{print $c[2]. "\n";}

@path = ('admin1.php',
'admin1.html',
'admin2.php',
'admin2.html',
'yonetim.php',
'yonetim.html',
'yonetici.php',
'yonetici.html',      
'ccms/',
'ccms/login.php',
'ccms/index.php',
'maintenance/',
'webmaster/',
'adm/',
'configuration/',
'configure/',
'websvn/',
'admin/',
'admin/account.php',
'admin/account.html',
'admin/index.php',
'admin/index.html',
'admin/login.php',
'admin/login.html',
'admin/home.php',
'admin/controlpanel.html',
'admin/controlpanel.php',
'admin.php',
'admin.html',
'admin/cp.php',
'admin/cp.html',
'cp.php',
'cp.html',
'administrator/',
'administrator/index.html',
'administrator/index.php',
'administrator/login.html',
'administrator/login.php',
'administrator/account.html',
'administrator/account.php',
'administrator.php',
'administrator.html',
'login.php',
'login.html',
'modelsearch/login.php',
'moderator.php',
'moderator.html',
'moderator/login.php',
'moderator/login.html',
'moderator/admin.php',
'moderator/admin.html',
'moderator/',
'account.php',
'account.html',
'controlpanel/',
'controlpanel.php',
'controlpanel.html',
'admincontrol.php',
'admincontrol.html',
'adminpanel.php',
'adminpanel.html',
'admin1.asp',
'admin2.asp',
'yonetim.asp',
'yonetici.asp',
'admin/account.asp',
'admin/index.asp',
'admin/login.asp',
'admin/home.asp',
'admin/controlpanel.asp',
'admin.asp',
'admin/cp.asp',
'cp.asp',
'administrator/index.asp',
'administrator/login.asp',
'administrator/account.asp',
'administrator.asp',
'login.asp',
'modelsearch/login.asp',
'moderator.asp',
'moderator/login.asp',
'moderator/admin.asp',
'account.asp',
'controlpanel.asp',
'admincontrol.asp',
'adminpanel.asp',
'fileadmin/',
'fileadmin.php',
'fileadmin.asp',
'fileadmin.html',
'administration/',
'administration.php',
'administration.html',
'sysadmin.php',
'sysadmin.html',
'phpmyadmin/',
'myadmin/',
'sysadmin.asp',
'sysadmin/',
'ur-admin.asp',
'ur-admin.php',
'ur-admin.html',
'ur-admin/',
'Server.php',
'Server.html',
'Server.asp',
'Server/',
'wp-admin/',
'administr8.php',
'administr8.html',
'administr8/',
'administr8.asp',
'webadmin/',
'webadmin.php',
'webadmin.asp',
'webadmin.html',
'administratie/',
'admins/',
'admins.php',
'admins.asp',
'admins.html',
'administrivia/',
'Database_Administration/',
'WebAdmin/',
'useradmin/',
'sysadmins/',
'admin1/',
'system-administration/',
'administrators/',
'pgadmin/',
'directadmin/',
'staradmin/',
'ServerAdministrator/',
'SysAdmin/',
'administer/',
'LiveUser_Admin/',
'sys-admin/',
'typo3/',
'panel/',
'cpanel/',
'cPanel/',
'cpanel_file/',
'platz_login/',
'rcLogin/',
'blogindex/',
'formslogin/',
'autologin/',
'support_login/',
'meta_login/',
'manuallogin/',
'simpleLogin/',
'loginflat/',
'utility_login/',
'showlogin/',
'memlogin/',
'members/',
'login-redirect/',
'sub-login/',
'wp-login/',
'login1/',
'dir-login/',
'login_db/',
'xlogin/',
'smblogin/',
'customer_login/',
'UserLogin/',
'login-us/',
'acct_login/',
'admin_area/',
'bigadmin/',
'project-admins/',
'phppgadmin/',
'pureadmin/',
'sql-admin/',
'radmind/',
'openvpnadmin/',
'wizmysqladmin/',
'vadmind/',
'ezsqliteadmin/',
'hpwebjetadmin/',
'newsadmin/',
'adminpro/',
'Lotus_Domino_Admin/',
'bbadmin/',
'vmailadmin/',
'Indy_admin/',
'ccp14admin/',
'irc-macadmin/',
'banneradmin/',
'sshadmin/',
'phpldapadmin/',
'macadmin/',
'administratoraccounts/',
'admin4_account/',
'admin4_colon/',
'radmind-1/',
'Super-Admin/',
'AdminTools/',
'cmsadmin/',
'SysAdmin2/',
'globes_admin/',
'cadmins/',
'phpSQLiteAdmin/',
'navSiteAdmin/',
'server_admin_small/',
'logo_sysadmin/',
'server/',
'database_administration/',
'power_user/',
'system_administration/',
'ss_vms_admin_sm/',
'admins',
'mail',
'adm',
'party',
'admin',
'administration',
'administrator',
'administrators',
'database',
'admin.php',
'admin.asp',
'administrator.php',
'administrator.asp',
'administrators.asp',
'administrators.asp',
'login.php',
'login.asp',
'logon.asp',
'logon.php',
'quanly.asp',
'quanly.php',
'quantri.php',
'quantri.asp',
'quantriweb.asp',
'quantriweb.asp',
'admin_index.asp',
'admin_index.php',
'password.asp',
'password.php',
'dangnhap.asp',
'dangnhap.php',
'user.php',
'user.asp',
'phpinfo.',
'logs.',
'log.',
'adminwww',
'db.',
'Readme.',
'urllist.',
'admin_file',
'admin_files',
'admin_login',
'cpg',
'inc_lib',
'inc_conf',
'inc_config',
'lib_config',
'login',
'logon',
'forum',
'forums',
'diendan',
'restricted',
'forum1',
'forum2',
'forum3',
'diendan1',
'diendan2',
'foto',
'diendan3',
'php',
'phpbb',
'awstats',
'test',
'img-sys',
'cgi-sys',
'java-sys',
'php-sys',
'adserver',
'login-sys',
'admin-sys',
'community',
'cgi-sys/mchat.',
'demo',
'download',
'temp',
'tmp',
'ibf',
'ipb',
'vbb',
'vbb1',
'vbb2',
'adminp',
'vbb3',
'INSTALL',
'install',
'guest',
'phpMyAdmin',
'phpbb1',
'phpbb2',
'phpBB',
'phpBB2',
'PHPBB',
'hackconkec',
'12931293',
'secret',
'root',
'cgi-bin',
'files',
'scripts',
'nobody',
'home',
'manager',
'manage',
'live',
'exec',
'livehelp',
'livechat',
'chat',
'phplive',
'php.',
'ko',
'khong',
'khongdungnua',
'kodungnua',
'vut',
'cuc',
'cut',
'db',
'data',
'site',
'cgi',
'taolao',
'class',
'online',
'common',
'shop',
'shopadmin',
'thesun',
'news',
'store',
'text',
'source',
'sources',
'control',
'controls',
'console',
'cp',
'admincp',
'web',
'modules',
'_admin',
'_admin_file',
'admin_site',
'_login',
'pages',
'access',
'password',
'pwd',
'pass',
'user',
'users',
'_users',
'admin_user',
'admin_users',
'content',
'cart',
'carts',
'cc',
'paypal',
'cvv',
'cvv2',
'main1',
'main',
'webalizer',
'widgets',
'acc',
'accounts',
'achive',
'nhanvien',
'domain',
'gallerry',
'mysql',
'order',
'orders',
'4rum',
'photo',
'phpmyadmin',
'share',
'save',
'help',
'admin_',
'login_',
'webmaster',
'webmanager',
'quanly',
'portal',
'pub',
'server',
'seucre',
'security',
'securelogin',
'admin_security',
'adm_sec',
'admin_sec',
'setting',
'support',
'sysuser',
'mgr',
'upload',
'webcart',
'webmail',
'tools',
'zorum',
'phorum',
'log',
'adminlogs',
'adminlog',
'logs',
'asp',
'jsp',
'js',
'java',
'javascript',
'javascripts',
'auth',
'client',
'code',
'connect',
'dbase',
'dir',
'directory',
'down',
'up',
'downloads',
'fileadmin',
'hidden',
'hompage',
'htdocs',
'www',
'html',
'html1',
'html2',
'html3',
'includes',
'config',
'configuration',
'info',
'installation',
'installinstall',
'bbs',
'install1',
'install2',
'install3',
'_install',
'install12',
'install123',
'lib',
'library',
'logging',
'members',
'pics',
'public',
'purchase',
'sale',
'sales',
'secured',
'sell',
'services',
'src',
'staff',
'super_admin',
'sys',
'system',
'testing',
'tests',
'upgrade',
'update',
'webdata',
'weblog',
'weblogs',
'webdb',
'wwwboard',
'wwwforum',
'wwwadmin',
'wwwsite',
'xxx',
'xxx2',
'vn',
'english',
'en',
'dos',
'ddos',
'guestbook',
'images',
'image',
'icon',
'phanmem',
'cpanel',
'customers',
'modcp',
'music',
'global',
'join',
'kernel',
'readme',
'software',
'soft',
'hack',
'hacke',
'hackdicon',
'hackweb',
'Data',
'hacker',
'hacking',
'textfiles',
'private',
'tut',
'nhac',
'nghenhac',
'amnhac',
'thethao',
'cache',
'language',
'learning',
'learn',
'elearning',
'vi',
'rum',
'tool',
'win',
'windows',
'nix',
'slax',
'su',
'sub',
'nano',
'linux',
'myadmin',
'siteadmin',
'phpadmin',
'phplogin',
'list',
'lists',
'money',
'hentai',
'cfg',
'blog',
'classes',
'counter',
'extra',
'links',
'pear',
'tester',
'apche',
'iis',
'generic',
'netapp',
'netscape',
'base',
'basic',
'advanced',
'general',
'cgi-local',
'custdata',
'cutenews',
'databases',
'datas',
'dbs',
'dc',
'adc',
'debug',
'dev',
'developer',
'development',
'edit',
'eventum',
'etc',
'firewall',
'quantri',
'gb',
'hostadmin',
'inc',
'mailman',
'mambo',
'giaitri',
'master',
'shell',
'file',
'msadm',
'myphpnuke',
'phpnuke',
'nuke',
'phpwebsite',
'pls',
'helpdesk',
'postnuke',
'power',
'samples',
'servlet',
'session',
'shoutbox',
'datadump',
'dump',
'dbdump',
'ssl',
'supporter',
'syshelp',
'us',
'vbulletin',
'viewimg',
'webcalendar',
'webtools',
'xsql',
'accounting',
'advwebadmin',
'agent',
'applicattion',
'applicattions',
'backup',
'beta',
'ccbill',
'cert',
'certificate',
'ftp',
'homepage',
'incoming',
'information',
'phpmyreport',
'report',
'vitual',
'vitualpath',
'internal',
'intranet',
'lan',
'wan',
'boxes',
'scr',
'temporal',
'template',
'stat',
'webstat',
'webadmin',
'web_admin',
'webmaster_logs',
'filemgmt',
'admmgmt',
'adm_mgmt',
'dream',
'diary',
'essay',
'exp',
'expl',
'exploit',
'exploits',
'greeting',
'link',
'sendmail',
'start',
'trash',
'acp',
'block',
'checkout',
'css',
'deny',
'public_html',
'codes',
'phim',
'love',
'thugian',
'truyen',
'funny',
'fun',
'fuck',
'fuckyou',
'game',
'games',
'forums1',
'forums2',
'forums3',
'discuss',
'discussion',
'component',
'baomat',
'2000',
'2001',
'2002',
'2003',
'2004',
'2005',
'2006',
'2007',
'2008',
'123456',
'revision',
'papers',
'cntt',
'include',
'123',
'12',
'1234',
'privates',
'sock',
'socks',
'host',
'hosts',
'domains',
'back',
'cnn',
'bd',
'net',
'inet',
'internet',
'check',
'checker',
'tinh',
'tinhyeu',
'luubut',
'nhatki',
'nhatky',
'uocnguyen',
'anh',
'thuvien',
'cauhinh',
'wish',
'superadmin',
'product',
'products',
'hosting',
'statics',
'plugins',
'polls',
'helps',
'doc',
'manual',
'faqman',
'man',
'manpage',
'manpages',
'faq',
'affiliate',
'uploadfile',
'uploadfiles',
'trochoi',
'funs',
'group',
'admingroup',
'listing',
'misc',
'sql',
'controlpanel',
'membership',
'tinnhan',
'tintuc',
'thaoluan',
'freeware',
'adware',
'bantin',
'squad',
'kho',
'khonhac',
'nhakho',
'releases',
'banluan',
'history',
'commercial',
'repair',
'card',
'cards',
'ecard',
'thiep',
'thiepmung',
'daotao',
'cs_gallery',
'gallery',
'photogallery',
'tapchi',
'sach',
'danhba',
'system-admin',
'system_admin',
'noibo',
'bimat',
'quantrisite',
'minhhoa',
'gopy',
'dichvu',
'sitemap',
'tochuc',
'cautao',
'dangnhap',
'WebMgmt',
'sitemgmt',
'trangchu',
'joomla',
'account',
'billing',
'freeform',
'interactive',
'michael',
'herold',
'statistik',
'scout',
'toolkit',
'tualblog',
'vignette',
'virtuemart',
'ls',
'vul',
'xploit',
'sploit',
'metasploit',
'metas',
'netcart',
'lexphpteam',
'stake',
'04webserver',
'0verkill',
'0wn',
'f0rum',
'1-script',
'10-4',
'aps',
'121',
'123apps',
'productions',
'2200net',
'2bgal',
'2enetworx',
'2fax',
'2wire',
'321soft',
'360',
'degree',
'3com',
'3d-ftp',
'pureftpd',
'proftpd',
'proxy',
'3d3',
'3do',
'3proxy',
'3r',
'3ware',
'articles',
'a-blog',
'a-squared',
'a-suivre',
'a-v',
'tronics',
'pifou',
'aaiportal',
'aardvark',
'topsites',
'abarcar',
'realty',
'abc2mtex',
'abc2ps',
'abcmidi',
'abcpp',
'abctab2ps',
'abczone',
'abe',
'timmerman',
'abisoft',
'abisource',
'abledesign',
'aborior',
'abuse',
'abuse-sdl',
'academ',
'acal',
'accelerated',
'enterprise',
'mortgage',
'access-remote-pc',
'access_user',
'accessdata',
'accipiter',
'accordent',
'technologies',
'acd',
'incorporated',
'systems',
'aceboard',
'acfreeproxy',
'acftp',
'acgv',
'achieva',
'achievo',
'acid',
'acidcat',
'aclogic',
'acm',
'acme',
'laboratories',
'acnews',
'acpid',
'acrabit',
'acrowave',
'actinic',
'actionapps',
'actionpoll',
'activcard',
'active',
'bulletin',
'board',
'bookmarks',
'corner',
'softwares',
'suite',
'active6',
'activecampaign',
'activepost',
'activestate',
'activision',
'actualscripts',
'actuate',
'acuity',
'acuma',
'acushop',
'acweb',
'ada',
'core',
'adalis',
'informatique',
'adam',
'ismay',
'megacz',
'brown',
'webb',
'adaptive',
'website',
'framework',
'adcycle',
'add2it',
'adder',
'technology',
'addsoft',
'adelix',
'ademco',
'adersoftware',
'ades',
'design',
'adiscon',
'adlib',
'edocument',
'admanager',
'with',
'levels',
'viewed',
'posts',
'tracker',
'admiral',
'adn',
'adobe',
'adodb',
'adplug',
'adrian',
'pascalau',
'adsubtract',
'adtran',
'poll',
'research',
'webhost',
'advantage',
'century',
'telecommunication',
'adventia',
'adventnet',
'advisor',
'adzapper',
'aelita',
'aenovo',
'aenovoshop',
'aep',
'networks',
'aeromail',
'aes',
'aestiva',
'aewebworks',
'dating',
'afd',
'affcommerce',
'shopping',
'affix',
'affymetrix',
'afgb',
'afsl',
'aftpd',
'ageet',
'agileco',
'agilent',
'agnitum',
'agsm',
'1234.php',);

foreach $myshell(@path){

$url = $site.$myshell;
$req = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($req);

if ($response->is_success){
print $c[3]. "\n[✔] Shell ! Found ◉ $url\n\n";
}else{
print $c[2]. "[✘] Not Found ◎ $site$myshell\n";
}
}
