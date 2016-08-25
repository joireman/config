=surround_with_anchor <a name=%\c>%\m sur_text -select%</a>
orderedlist <ol>
            %\i<li> Item 1... </li>
            %\i<li> Item 2... </li>
            %\i<li> Item 3... </li>
            </ol>
datehdg(month "Month" 
        day "Day"
        moabbr "Month Abbreviation"
        )
 <a name="%(moabbr)_%(day)"></a><H3>%(month) %(day)</H3>
=surround_with_underline <u>%\m sur_text -select%</u>
acronym(dAcronym "Acronym" 
        fullText "Full Text of Acronymn"
        )
 <acronym title="%(fullText)">%(dAcronym)</acronym>
newp <p>
     %\c
     </p>
html4doc(dTitle "Page Title" 
         )
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">
 %\S
 <html>
 <head>
 %\i<title>%(dTitle)</title>
 %\i<meta http-equiv="content-type" content="text/html;charset=utf-8"> %\S
 </head>
 %\S
 <body>
 %\c
 </body>
 </html>
=surround_with_definition_list <dl>
                               %\m sur_text -indent%
                               </dl>
bibleVerse %\L
cswnote(topic "Topic" 
        )
 %\L <div class="sftw_note">
  <h2>%(topic) (%\d)</h2>
  %\c
  </div>
div(className "Class name" 
    )
 <div class="%(className)">
 %\i%\c
 </div>
=surround_with_list_item <li>%\m sur_text -select%</li>
=surround_with_definition_list_definition <dd>
                                          %\m sur_text -indent%
                                          </dd>
pagebr <!-- FORCE A PAGE BREAK -->
       <mbp:pagebreak />
       %\S
=surround_with_emphasis <em>%\m sur_text -select%</em>
=surround_with_italic <i>%\m sur_text -select%</i>
comment <!-- %\c -->
unorderedlist <ul>
              %\i<li> Item 1... </li>
              %\i<li> Item 2... </li>
              %\i<li> Item 3... </li>
              </ul>
cgennote(topic "Topic" 
         )
 %\L <div class="general_note">
  <h2>%(topic) (%\d)</h2>
  %\c
  </div>
=surround_with_table_data <td%\c>%\m sur_text -select%</td>
=surround_with_heading_1 <h1>%\m sur_text%</h1>
=surround_with_heading_2 <h2>%\m sur_text%</h2>
=surround_with_heading_3 <h3>%\m sur_text%</h3>
=surround_with_ordered_list <ol%\c>
                            %\m sur_text -indent%
                            </ol>
=surround_with_heading_4 <h4>%\m sur_text%</h4>
readmore(linkLoc "Link location" 
         )
 <a href="%(linkLoc)">read more</a>
=surround_with_heading_5 <h5>%\m sur_text%</h5>
=surround_with_heading_6 <h6>%\m sur_text%</h6>
=surround_with_table_row <tr%\c>
                         %\m sur_text%
                         </tr>
myufhh(month "Month" 
       day "Day"
       moabbr "Month abbreviation"
       )
 <a name="%(moabbr)_%(day)"></a><H3>%(month) %(day)</H3>
 <strong align="center"> </strong>
 <p>
 "<em> </em>" %\S
 %\l
 </p>
 %\l
 <!-- FORCE A PAGE BREAK -->
 <mbp:pagebreak />
 %\l
=surround_with_blink <blink>%\m sur_text -select%</blink>
abbr(dAbbr "Abbreviation" 
     fullName "Full name of abbreviation"
     )
 <abbr title="%(fullName)">%(dAbbr)</abbr>
=surround_with_preformatted <pre>
                            %\m sur_text%
                            </pre>
image(URL "Image URL" 
      altText "Alternate Text"
      )
 <img src="%(URL)" alt="%(altText)" />
bibleref(book "Book" 
         verse "Verse"
         htmlSpace "HTML Space" %20
         )
 <sup>
 [<a href="http://www.biblegateway.com/passage/?search=%(book)%(htmlSpace)%(verse)&version=NIV">NIV</a>]
 [<a href="http://www.biblegateway.com/passage/?search=%(book)%(htmlSpace)%(verse)&version=NASB">NASB</a>]
 [<a href="http://www.biblegateway.com/passage/?search=%(book)%(htmlSpace)%(verse)&version=NASB">NKJV</a>]
 </sup>
=surround_with_unordered_list_with_li <ul>
                                      %\m sur_text -indent -begin <li> -end </li>%
                                      </ul>
span(className "Class name" 
     )
 <span class="%(className)">%\c</span>
chwnote(topic "Topic" 
        )
 %\L <div class="hdwr_note">
  <h2>%(topic) (%\d)</h2>
  %\c
  </div>
=surround_with_table <table%\c>
                     %\m sur_text -indent%
                     </table>
alink(linkLoc "Link Location" 
      linkText "Text for Link"
      )
 <a href="%(linkLoc)">%(linkText)</a>
cffaddon(addOnName "Add-On Name" 
         addOnUsage "Usage"
         addOnNotes "Notes"
         )
 %\i <tr>
 %\i %\i<td name="name">%(addOnName)</td>
 %\i %\i<td name="usage">%(addOnUsage)</td> %\S
 %\i %\i<td name="notes"> %(addOnNotes)</td> %\S
 %\i </tr>
 %\S
linkcss(styleSheetFile "Stylesheet filename" 
        )
 <link rel="stylesheet" href="%(styleSheetFile)" type="text/css" />
 %\S
xhtmldoc(dTitle "Page Title" 
         )
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 %\S
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 <head>
 %\i<title>%(dTitle)</title>
 %\i<meta http-equiv="content-type" content="text/html;charset=utf-8" /> %\S
   <style type="text/css">
   /*<![CDATA[*/
       /*** CSS style specific to the current page **/
   /*]]>*/
   </style>
 %\S
 </head>
 %\S
 <body>
 %\c
 </body>
 </html>
 %\S
=surround_with_unordered_list <ul%\c>
                              %\m sur_text -indent%
                              </ul>
=surround_with_bold <b>%\m sur_text -select%</b>
ahref(linkLoc "Link Location" 
      linkText "Link Text"
      )
 <a href="%(linkLoc)">%(linkText)</a>
=surround_with_definition_list_term <dt>%\m sur_text%</dt>
rtop <a id="retToTop" href="#top">Return to top</a>
fseccontrib(contribName "Contributer name" 
            )
 (%\d : %(contribName))
pclass(className "Class Name" 
       )
 <p class="%(className)">%\c</p>
=surround_with_font <font %\c>%\m sur_text%</font>
llrfnote(project "Project" 
         task "Project Task"
         )
 <div class="llrfnote">
 <h3>%(project) - %(task) (%\d)</h3>
 <p>
   %\c
 </p>
 <a href="#top">Return to Top</a>
 </div>
 %\S
=surround_with_general_tag(tag "Tag" 
                           )
 <%(tag)%\c>%\m sur_text%</%(tag)>
=surround_with_paragraph <p>%\m sur_text%</p>
=surround_with_ordered_list_with_li <ol%\c>
                                    %\m sur_text -indent -begin <li> -end </li>%
                                    </ol>
=surround_with_link <a href="%\c">%\m sur_text%</a>
