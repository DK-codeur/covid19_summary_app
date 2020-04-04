import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import './colors.dart';

  //buildAppbarTitle
  Text buildAppbarTitle(String title) {
    return Text(
      title, 
      style: TextStyle(
        color: whiteColor,
        fontFamily: 'CenturyGothic',
        fontWeight: FontWeight.bold
      )
    );
  }

  //buildContainer
  Container buildContainer(String title, int numb, Color color1, Color color2,) {
    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Total',),
            Text(title),
            SizedBox(height: 5,),
            Text(
              '$numb',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }


  //BubbleBottomBar
  BubbleBottomBar buildBubbleBottomBar(int selectedIndex, void Function(int) onItemTapped) {
    return BubbleBottomBar(
      opacity: 0.2,
      backgroundColor: Colors.black12,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      elevation: 12,
      // fabLocation: BubbleBottomBarFabLocation.end, //new
      hasNotch: true, //new
      hasInk: true, //new, gives a cute ink effect
      inkColor: Colors.black12, //optional, uses theme color if not specified
      items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.dashboard, color: Colors.white60,), activeIcon: Icon(Icons.dashboard, color: Colors.blue,), title: Text("Dashbord")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.bubble_chart, color: Colors.white60,), activeIcon: Icon(Icons.bubble_chart, color: Colors.blue,), title: Text("Summary")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.insert_chart, color: Colors.white60,), activeIcon: Icon(Icons.insert_chart, color: Colors.blue,), title: Text("Stats")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.library_books, color: Colors.white60,), activeIcon: Icon(Icons.library_books, color: Colors.blue,), title: Text("News"))
      ],
    );
  }


//buildLastNewText
  Padding buildLastNewText(String text) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 20.0, 
              fontFamily: 'Poppins',
              // fontWeight: FontWeight.bold, 
              color: Colors.white70
            ),
          ),          
        ],
      ),
    );
  }

  //buildStatsTitleText
  Padding buildStatsTitleText(String text) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 15.0, 
              fontFamily: 'CenturyGhotic',
              // fontWeight: FontWeight.bold, 
              color: Colors.white70
            ),
          ),
        ],
      ),
    );
  }

  //build pip
  Container buildPip() {
    return Container(
      width: 1,
      height: 70,
      color: whiteColor,
    );
  }

  //buildSummaryColumn
  Padding buildSummaryColumn(String title, int numb, Color color,) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Total',
            style: TextStyle(
              // fontFamily: 'Poppins',
              fontSize: 13.1,
              color: whiteColor
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'CenturyGothic',
              fontSize: 13.8,
              color: whiteColor,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '$numb',
            style: TextStyle(
              // fontFamily: 'Poppins',
              fontSize: 22.4,
              color: color,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }


  Map<String, dynamic> flag = {
    'afghanistan' : 'assets/images/af.png',
    'albania' : 'assets/images/al.png',
    'algeria' : 'assets/images/dz.png',
    'andorra' : 'assets/images/ad.png',
    'angola' : 'assets/images/ao.png',
    'antigua-and-barbuda' : 'assets/images/ag.png',
    'argentina' : 'assets/images/ar.png',
    'armenia' : 'assets/images/am.png',
    'aruba' : 'assets/images/aw.png',
    'australia' : 'assets/images/au.png',
    'austria' : 'assets/images/at.png',
    'azerbaijan' : 'assets/images/az.png',
    'bahamas' : 'assets/images/as.png',
    'bahamas-the' : 'assets/images/as.png',
    'bahrain' : 'assets/images/bh.png',
    'bangladesh' : 'assets/images/bd.png',
    'barbados' : 'assets/images/bb.png',
    'belarus' : 'assets/images/by.png',
    'belgium' : 'assets/images/be.png',
    'belize' : 'assets/images/bz.png',
    'benin' : 'assets/images/bj.png',
    'bhutan' : 'assets/images/bt.png',
    'bolivia' : 'assets/images/bo.png',
    'bosnia-and-herzegovina' : 'assets/images/ba.png',
    'brazil' : 'assets/images/br.png',
    'brunei' : 'assets/images/bn.png',
    'bulgaria' : 'assets/images/bg.png',
    'burkina-faso' : 'assets/images/bf.png',
    'cabo-verde' : 'assets/images/cv.png',
    'cameroon' : 'assets/images/cm.png',
    'canada' : 'assets/images/ca.png',
    'cape-verde' : 'assets/images/cv.png',
    'central-african-republic' : 'assets/images/cf.png',
    'chad' : 'assets/images/ro.png',
    'chile' : 'assets/images/cl.png',
    'china' : 'assets/images/cn.png',
    'colombia' : 'assets/images/co.png',
    'congo-(brazzaville)' : 'assets/images/cd.png',
    'congo-(kinshasa)' : 'assets/images/cg.png',
    'costa-rica' : 'assets/images/cr.png',
    'cote-divoire' : 'assets/images/ci.png',
    'croatia' : 'assets/images/hr.png',
    'cuba' : 'assets/images/cu.png',
    'cyprus' : 'assets/images/cy.png',
    'czech-republic' : 'assets/images/cz.png',
    'denmark' : 'assets/images/dk.png',
    'djibouti' : 'assets/images/dj.png',
    'dominica' : 'assets/images/dm.png',
    'dominican-republic' : 'assets/images/do.png',
    'ecuador' : 'assets/images/ec.png',
    'egypt' : 'assets/images/eg.png',
    'el-salvador' : 'assets/images/sv.png',
    'equatorial-guinea' : 'assets/images/gq.png',
    'eritrea' : 'assets/images/er.png',
    'estonia' : 'assets/images/ee.png',
    'ethiopia' : 'assets/images/et.png',
    'fiji' : 'assets/images/fj.png',
    'finland' : 'assets/images/fi.png',
    'france' : 'assets/images/fr.png',
    'french-guiana' : 'assets/images/fr.png',
    'gabon' : 'assets/images/ga.png',
    'gambia' : 'assets/images/gm.png',
    // 'gambia-the' : '',
    'georgia' : 'assets/images/ge.png',
    'germany' : 'assets/images/de.png',
    'ghana' : 'assets/images/gh.png',
    'greece' : 'assets/images/gr.png',
    'grenada' : 'assets/images/gd.png',
    'guadeloupe' : 'assets/images/fr.png',
    'guatemala' : 'assets/images/gt.png',
    'guinea' : 'assets/images/gn.png',
    'guinea-Bissau' : 'assets/images/gw.png',
    'guyana' : 'assets/images/gy.png',
    'haiti' : 'assets/images/ht.png',
    'honduras' : 'assets/images/hn.png',
    'hungary' : 'assets/images/hu.png',
    'iceland' : 'assets/images/is.png',
    'india' : 'assets/images/in.png',
    'indonesia' : 'assets/images/id.png',
    'iran' : 'assets/images/id.png',
    'iran (Islamic Republic of)' : 'assets/images/ir.png',
    'iraq' : 'assets/images/iq.png',
    'ireland' : 'assets/images/ie.png',
    'israel' : 'assets/images/il.png',
    'italy' : 'assets/images/it.png',
    // 'ivory-coast' : '',
    'jamaica' : 'assets/images/jm.png',
    'japan' : 'assets/images/jp.png',
    'jordan' : 'assets/images/jo.png',
    'kazakhstan' : 'assets/images/kz.png',
    'kenya' : 'assets/images/ke.png',
    'korea-south' : 'assets/images/kr.png',
    'kosovo' : 'assets/images/ks.png',
    'kuwait' : 'assets/images/kw.png',
    'kyrgyzstan' : 'assets/images/kg.png',
    'laos' : 'assets/images/la.png',
    'latvia' : 'assets/images/lv.png',
    'lebanon' : 'assets/images/lb.png',
    'liberia' : 'assets/images/lr.png',
    'libya' : 'assets/images/ly.png',
    'liechtenstein' : 'assets/images/li.png',
    'lithuania' : 'assets/images/lt.png',
    'luxembourg' : 'assets/images/lu.png',
    'madagascar' : 'assets/images/mg.png',
    'malaysia' : 'assets/images/my.png',
    'maldives' : 'assets/images/mv.png',
    'mali' : 'assets/images/ml.png',
    'malta' : 'assets/images/mt.png',
    'martinique' : 'assets/images/fr.png',
    'mauritius' : 'assets/images/mu.png',
    'mayotte' : 'assets/images/fr.png',
    'mexico' : 'assets/images/mx.png',
    'moldova' : 'assets/images/md.png',
    'monaco' : 'assets/images/mc.png',
    'mongolia' : 'assets/images/mn.png',
    'montenegro' : 'assets/images/me.png',
    'morocco' : 'assets/images/ma.png',
    'mozambique' : 'assets/images/mz.png',
    'namibia' : 'assets/images/na.png',
    'nepal' : 'assets/images/np.png',
    'netherlands' : 'assets/images/nl.png',
    'new-zealand' : 'assets/images/nz.png',
    'nicaragua' : 'assets/images/ni.png',
    'niger' : 'assets/images/ne.png',
    'nigeria' : 'assets/images/ng.png',
    'norway' : 'assets/images/no.png',
    'north-macedonia' : 'assets/images/mk.png',
    'oman' : 'assets/images/om.png',
    'pakistan' : 'assets/images/pk.png',
    'palestine' : 'assets/images/eh.png',
    'occupied-palestinian-territory' : 'assets/images/eh.png',
    'panama' : 'assets/images/pa.png',
    'papua-new-guinea' : 'assets/images/pg.png',
    'paraguay' : 'assets/images/py.png',
    'peru' : 'assets/images/pe.png',
    'philippines' : 'assets/images/ph.png',
    'poland' : 'assets/images/pl.png',
    'portugal' : 'assets/images/pt.png',
    'qatar' : 'assets/images/qa.png',
    'reunion' : 'assets/images/fr.png',
    'romania' : 'assets/images/ro.png',
    'russia' : 'assets/images/ru.png',
    'rwanda' : 'assets/images/rw.png',
    'saint-barthelemy' : 'assets/images/fr.png',
    'saint-kitts-and-nevis' : 'assets/images/kn.png',
    'saint-lucia' : 'assets/images/lc.png',
    'saint-martin' : 'assets/images/fr.png',
    'saint-vincent-and-the-grenadines' : 'assets/images/vc.png',
    'san-marino' : 'assets/images/sm.png',
    'saudi Arabia' : 'assets/images/sa.png',
    'senegal' : 'assets/images/sn.png',
    'serbia' : 'assets/images/rs.png',
    'seychelles' : 'assets/images/sc.png',
    'singapore' : 'assets/images/sg.png',
    'slovakia' : 'assets/images/sk.png',
    'somalia' : 'assets/images/so.png',
    'south-africa' : 'assets/images/za.png',
    'south-korea' : 'assets/images/kr.png',
    'spain' : 'assets/images/es.png',
    'sri-lanka' : 'assets/images/lk.png',
    'sudan' : 'assets/images/sd.png',
    'suriname' : 'assets/images/sr.png',
    'sweden' : 'assets/images/se.png',
    'switzerland' : 'assets/images/ch.png',
    'syria' : 'assets/images/sy.png',
    'taiwan' : 'assets/images/tw.png',
    'tanzania' : 'assets/images/tz.png',
    'thailand' : 'assets/images/th.png',
    'timor-leste' : 'assets/images/tl.png',
    'togo' : 'assets/images/tg.png',
    'trinidad-and-tobago' : 'assets/images/tt.png',
    'tunisia' : 'assets/images/tn.png',
    'turkey' : 'assets/images/tr.png',
    'uganda' : 'assets/images/ug.png',
    'ukraine' : 'assets/images/ua.png',
    'united-arab-emirates' : 'assets/images/ae.png',
    'uruguay' : 'assets/images/uy.png',
    'us' : 'assets/images/us.png',
    'uzbekistan' : 'assets/images/uz.png',
    'vatican-city' : 'assets/images/va.png',
    'venezuela' : 'assets/images/ve.png',
    'vietnam' : 'assets/images/vn.png',
    'yemen' : 'assets/images/ye.png',
    'zambia' : 'assets/images/zm.png',
    'zimbabwe' : 'assets/images/zw.png',
    'united-kingdom' : 'assets/images/gb.png',
    'uk' : 'assets/images/gb.png',
    'puerto-rico' : 'assets/images/pr.png',
    'north-ireland' : 'assets/images/gb.png',
    'mauritania' : 'assets/images/mr.png',
    'macau' : 'assets/images/mo.png',
    'jersey' : 'assets/images/je.png',
    'hong-kong' : 'assets/images/hk.png',
    'guernsey' : 'assets/images/gg.png',
    'guam' : 'assets/images/gu.png',
    'greenland' : 'assets/images/gl.png',
    'gibraltar' : 'assets/images/gi.png',
    'faroe-islands' : 'assets/images/fo.png',
    'eswatini' : 'assets/images/sz.png',
    'czechia' : 'assets/images/cz.png',
    'curacao' : 'assets/images/cw.png',
    'cayman-islands' : 'assets/images/ky.png',
    'cambodia' : 'assets/images/kh.png',

    'viet-nam' : 'assets/images/flag_defaut.png',
    'the-bahamas' : 'assets/images/flag_defaut.png',
    'the-gambia' : 'assets/images/flag_defaut.png',
    'taipei-and-environs' : 'assets/images/flag_defaut.png',
    'st.-martin' : 'assets/images/flag_defaut.png',
    'russian-federation' : 'assets/images/flag_defaut.png',
    'republic-of-the-congo' : 'assets/images/flag_defaut.png',
    'republic-of-ireland' : 'assets/images/flag_defaut.png',
    'republic-of-korea' : 'assets/images/flag_defaut.png',
    'republic-of-moldova' : 'assets/images/flag_defaut.png',
    'mainland-china' : 'assets/images/flag_defaut.png',
    'cruise-ship' : 'assets/images/flag_defaut.png',
    'diamond-princess' : 'assets/images/flag_defaut.png',
    'others' : 'assets/images/flag_defaut.png',
    'hong-kong-sar' : 'assets/images/flag_defaut.png',
    'macao-sar' : 'assets/images/flag_defaut.png',
    'channel-islands' : 'assets/images/flag_defaut.png',
    'holy See' : 'assets/images/flag_defaut.png',

    
  };

