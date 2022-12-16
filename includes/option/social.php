<?php

/**
* the social network
*/
self::$social['status']                       = true;

self::$social['list']['telegram']             = 'maalquran00';
self::$social['list']['facebook']             = 'maalquran00';
self::$social['list']['twitter']              = 'maalquran00';
self::$social['list']['github']               = 'maalquran';
// self::$social['list']['linkedin']             = null;
// self::$social['list']['aparat']               = 'maalquran-init';

/**
* TELEGRAM
* t.me
*/
self::$social['telegram']['status']     = true;
self::$social['telegram']['bot']        = 'MaalQuranBot';
self::$social['telegram']['token']      = '';
self::$social['telegram']['hookFolder'] = 'Ermile';
self::$social['telegram']['debug']      = true;
self::$social['telegram']['tunnel']     = true;

/**
* FACEBOOK
*/
self::$social['facebook']['status']           = false;
self::$social['facebook']['name']             = 'maalquran';
self::$social['facebook']['key']              = null;
self::$social['facebook']['app_id']           = null;
self::$social['facebook']['app_secret']       = null;
self::$social['facebook']['redirect_url']     = null;
self::$social['facebook']['required_scope']   = null;
self::$social['facebook']['page_id']          = null;
self::$social['facebook']['access_token']     = null;
self::$social['facebook']['client_token']     = null;

/**
* TWITTER
*/
self::$social['twitter']['status']            = false;
self::$social['twitter']['name']              = 'maalquran';
self::$social['twitter']['key']               = null;
self::$social['twitter']['ConsumerKey']       = null;
self::$social['twitter']['ConsumerSecret']    = null;
self::$social['twitter']['AccessToken']       = null;
self::$social['twitter']['AccessTokenSecret'] = null;

/**
* GITHUB
*/
self::$social['github']['status']             = false;
self::$social['github']['name']               = 'maalquran';
self::$social['github']['key']                = null;


/**
* LINKDIN
*/
self::$social['linkedin']['status']           = false;
self::$social['linkedin']['name']             = null;
self::$social['linkedin']['key']              = null;


/**
* APARAT
*/
self::$social['aparat']['status']             = false;
self::$social['aparat']['name']               = 'maalquran';
self::$social['aparat']['key']                = null;


?>