-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Mar 06, 2014 as 02:03 PM
-- Versão do Servidor: 3.23.32
-- Versão do PHP: 5.2.5


--
-- Banco de Dados: `viking2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL auto_increment,
  `accno` int(11) unsigned NOT NULL default '0',
  `password` varchar(32) NOT NULL default '',
  `type` int(11) NOT NULL default '0',
  `premDays` int(11) NOT NULL default '0',
  `premEnd` int(20) NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `blocked` tinyint(4) NOT NULL default '0',
  `rlname` varchar(45) NOT NULL default '',
  `location` varchar(45) NOT NULL default '',
  `hide` tinyint(1) NOT NULL default '0',
  `hidemail` tinyint(1) NOT NULL default '0',
  `ip` varchar(16) NOT NULL default '',
  `comment` tinytext NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `accno` (`accno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89731 ;

--
-- Extraindo dados da tabela `accounts`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `addons`
--

CREATE TABLE IF NOT EXISTS `addons` (
  `player` int(10) unsigned NOT NULL default '0',
  `outfit` int(10) unsigned NOT NULL default '0',
  `addon` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `addons`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `type` int(10) unsigned NOT NULL default '0',
  `ip` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `player` varchar(32) NOT NULL default '0',
  `account` int(10) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `reason` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bans`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `blessings`
--

CREATE TABLE IF NOT EXISTS `blessings` (
  `player` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `blessings`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `commands`
--

CREATE TABLE IF NOT EXISTS `commands` (
  `id` int(11) NOT NULL,
  `date` varchar(25) collate latin1_general_ci NOT NULL,
  `player` varchar(32) collate latin1_general_ci NOT NULL,
  `command` varchar(50) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `commands`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `deathlist`
--

CREATE TABLE IF NOT EXISTS `deathlist` (
  `player` int(11) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '0',
  `killer` varchar(30) NOT NULL default '0',
  `level` int(11) NOT NULL default '0',
  `date` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `deathlist`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `guildinvited`
--

CREATE TABLE IF NOT EXISTS `guildinvited` (
  `guildid` int(11) NOT NULL default '0',
  `playerid` int(11) NOT NULL default '0',
  `guildrank` varchar(32) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guildinvited`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `guildid` int(11) NOT NULL auto_increment,
  `guildname` varchar(100) NOT NULL default '',
  `ownerid` int(11) NOT NULL default '0',
  `guildstory` text NOT NULL,
  PRIMARY KEY  (`guildid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2369 ;

--
-- Extraindo dados da tabela `guilds`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `houseaccess`
--

CREATE TABLE IF NOT EXISTS `houseaccess` (
  `houseid` int(10) unsigned NOT NULL default '0',
  `listid` int(10) unsigned default '0',
  `list` text,
  KEY `houseid` USING BTREE (`houseid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `houseaccess`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `houseid` int(10) unsigned NOT NULL default '0',
  `owner` varchar(32) NOT NULL default '0',
  `paid` int(10) unsigned default '0',
  `warnings` int(10) unsigned default '0',
  PRIMARY KEY  (`houseid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `houses`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `player` int(11) NOT NULL default '0',
  `slot` tinyint(4) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `pid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `number` int(11) NOT NULL default '0',
  `actionid` int(5) NOT NULL default '0',
  `duration` int(11) NOT NULL default '0',
  `charges` int(11) NOT NULL default '0',
  `decaystate` int(11) NOT NULL,
  `text` text NOT NULL,
  `specialdesc` text NOT NULL,
  KEY `player` (`player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `items`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `access` int(11) NOT NULL default '0',
  `account` int(11) NOT NULL default '0',
  `level` bigint(20) unsigned NOT NULL default '1',
  `vocation` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `health` int(11) NOT NULL default '0',
  `healthmax` int(11) NOT NULL default '0',
  `soul` int(11) NOT NULL default '0',
  `soulmax` int(11) NOT NULL default '100',
  `direction` int(11) NOT NULL default '0',
  `experience` text NOT NULL,
  `lookbody` int(11) NOT NULL default '0',
  `lookfeet` int(11) NOT NULL default '0',
  `lookhead` int(11) NOT NULL default '0',
  `looklegs` int(11) NOT NULL default '0',
  `looktype` int(11) NOT NULL default '0',
  `lookaddons` int(11) NOT NULL default '0',
  `knowaddons` int(11) NOT NULL default '0',
  `maglevel` bigint(20) NOT NULL default '0',
  `mana` int(11) NOT NULL default '0',
  `manamax` int(11) NOT NULL default '0',
  `manaspent` text NOT NULL,
  `masterpos` varchar(16) NOT NULL default '',
  `pos` varchar(16) NOT NULL default '',
  `speed` int(11) NOT NULL default '0',
  `cap` int(11) NOT NULL default '0',
  `maxdepotitems` int(11) NOT NULL default '1000',
  `food` int(11) NOT NULL default '0',
  `sex` int(11) NOT NULL default '0',
  `guildid` int(11) unsigned NOT NULL default '0',
  `guildrank` varchar(32) NOT NULL default '',
  `guildnick` varchar(32) NOT NULL default '',
  `ownguild` int(11) NOT NULL default '0',
  `lastlogin` int(11) unsigned NOT NULL default '0',
  `lastip` int(11) unsigned NOT NULL default '0',
  `save` int(11) unsigned NOT NULL default '1',
  `redskulltime` int(11) unsigned NOT NULL default '0',
  `redskull` tinyint(1) unsigned NOT NULL default '0',
  `comment` varchar(255) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135847 ;

--
-- Extraindo dados da tabela `players`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `playerstorage`
--

CREATE TABLE IF NOT EXISTS `playerstorage` (
  `player` int(11) NOT NULL default '0',
  `key` int(11) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  KEY `player` (`player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `playerstorage`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `date` varchar(25) collate latin1_general_ci NOT NULL,
  `report` varchar(150) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=325 ;

--
-- Extraindo dados da tabela `reports`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `player` int(11) NOT NULL default '0',
  `id` tinyint(4) NOT NULL default '0',
  `skill` bigint(20) unsigned NOT NULL default '10',
  `tries` text NOT NULL,
  KEY `player` (`player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `skills`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `spells`
--

CREATE TABLE IF NOT EXISTS `spells` (
  `player` int(11) NOT NULL,
  `spell` varchar(50) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `spells`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tileitems`
--

CREATE TABLE IF NOT EXISTS `tileitems` (
  `tileid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `pid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `number` tinyint(4) NOT NULL,
  `attributes` blob,
  KEY `tileid` (`tileid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tileitems`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tilelist`
--

CREATE TABLE IF NOT EXISTS `tilelist` (
  `tileid` int(11) unsigned NOT NULL,
  `x` int(11) unsigned NOT NULL,
  `y` int(11) unsigned NOT NULL,
  `z` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`tileid`),
  UNIQUE KEY `x` (`x`,`y`,`z`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tilelist`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `viplist`
--

CREATE TABLE IF NOT EXISTS `viplist` (
  `account` int(11) unsigned NOT NULL default '0',
  `player` varchar(32) NOT NULL default '0',
  KEY `player` USING BTREE (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `viplist`
--

