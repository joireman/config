=surround_with_const_cast const_cast<%\c>(%\m sur_text%)
=surround_with_include_once(macro "Symbol"
                            )
 #ifndef %(macro)
 #define %(macro)
 %\m sur_text%
 #endif // %(macro)
=surround_with_if if (%\c) {
                  %\m sur_text -indent%
                  }
=surround_with_#if %\m begin_line%#if %\c
                   %\m sur_text%
                   %\m begin_line%#endif
=surround_with_try...catch...finally try {
                                     %\m sur_text -indent%
                                     } catch (%\c) { %\S
                                     } finally {
                                     }
gnucmain(filename "FileName" 
         )
 /*************************************************
  %(filename) - %\c
 
  Created: %\d, %\t
 
  Programmer: P. W. Joireman
 **************************************************/
 #include <stdio.h>
 #include <stdlib.h>
 
 int main(int argc, char *argv[]) %\S
 {
 
 %\iexit(EXIT_SUCCESS);
 }
 



doxygroup(grpLabel "Group Label (no spaces)" 
          grpName "Group Name"
          briefDesc "Brief Description"
          )
 /**
  * @defgroup %(grpLabel) %(grpName)
  * @brief %(briefDesc)
  */
 /* @{ */
 
 
 /* @} */
=surround_with_braces {
                      %\m sur_text -indent%
                      }
=surround_with_default default:
                       %\m sur_text -indent%
=surround_with_#ifndef %\m begin_line%#ifndef %\c
                       %\m sur_text%
                       %\m begin_line%#endif
=surround_with_finally finally {
                       %\m sur_text -indent%
                       }
fefunction(name "Function name" 
           return "Return type" int
           paramlist "Parameter list"
           )
 %\L %(return) %(name)(%(paramlist)) {
  %\S
  %\istatic char func[] = "%(name)";
  %\S
  %\S
  } /* %(name) */
  %\S
 
=surround_with_type_union typdef union %\c {
                          %\m sur_text -indent%
                          };
=surround_with_type_struct typedef struct %\c {
                           %\m sur_text -indent%
                           };
=surround_with_reinterpret_cast reinterpret_cast<%\c>(%\m sur_text%)
headerfile(preprocguard "Preprocessor Guard (_H_ added)" 
           )
 /*!
  @file
  @brief %\c
 
    @par Edit History
        - [0] [P. W. Joireman] %d Initial revision
 
   @par Version:
       $Id: $
 
   @par Copyright &copy; 2011 VG Bioinformatics, Inc. %\S
        All rights reserved.
 **************************************************/
 
 //       1         2         3         4         5         6         7
 //34567890123456789012345678901234567890123456789012345678901234567890
 
 #ifndef %(preprocguard)_H_
 #define %(preprocguard)_H_
 
 #endif
=surround_with_#ifdef %\m begin_line%#ifdef %\c
                      %\m sur_text%
                      %\m begin_line%#endif
=surround_with_catch catch (%\c) {
                     %\m sur_text -indent%
                     }
=surround_with_try...finally try {
                             %\m sur_text -indent%
                             } finally {
                             %\i%\c
                             }
doxyancllbk(name "Callback Name" 
            chanId "Channel ID:"
            genCallbk "Generic Callback"
            author "Author Name:" P. W. Joireman
            )
 /**
  *  %(name) %\S
  *  @brief %\c
  * %\S
  *  @param anData      -  ID of Acnet data that changed
  *  @param anCllbkData - %\S
  * %\S
  * @par EXAMPLE
  * @code
  *
  * @endcode
  *
  * @par WARNING
  * %\S
  * @par KEYWORDS
  * %\S
  * @par AUTHOR
  *  %\i%\i%(author)
  * %\S
  * @par FILES
  *  %\i%\i%\f
  * %\S
  * @see
  *************************************************/
 void %(name)(AnEvtId_t anData, void *anCllbkData ) {
 
 %\istatic char func[] = "%(name)";
 
 %\iAnIntFltId_t intFltId;
 %\iint chanId;        /* Updated Acnet device channel */
 %\iint elmtId;        /* Updated Acnet device channel element */
 
 %\i/* Cast arguments to proper data types */
 %\iintFltId = (AnIntFltId_t)AnCllbkAnObjGet( anData );
 
 %\i/* Find the updated channel and element */
 %\ichanId = AnCllbkChanIdxGet( anData );  /* %(chanId) AnIntFlt ANFLT channel */
 %\ielmtId = AnCllbkElmtIdxGet( anData );  /* channel element updated */
 
 %\i /* Check that this callback was added for the right device */
 %\iif ( chanId != %(chanId) ) {
 %\i%\iLogMsg(logId, LOG_SYS, LOG_ERR,"Wrong channel= ", chanId); %\S
 %\i%\ireturn;
 %\i}
 
 %\i%(genCallbk)(anData, anCllbkData);
 %\ireturn;
 } /* %(name) */
 
=surround_with_union union {
                     %\m sur_text -indent%
                     } %\c;
doxyfeheader(name "Function Name" 
             return "Return type" int
             author "Author" P. W. Joireman
             )
 /**
  * %(name)()
  * @brief %\c
  *
  * @par EXAMPLE
  * @code %\S
  *
  * @endcode
  *
  * @par RETURNS
  * %\i 0  - No error
  * %\i -1 - Error with LogMsg() reports
  *  %\S
  * @par WARNING
  * %\i Any warnings relative to using this function...
  *
  * @par TESTING
 * %\i A description of a testing procedure for the function
  *
  * @par AUTHOR
  *   %\i%(author)
  *
  * @par FILES
  *   %\i%\f
  *
  * @par SEE ALSO
  *
  **********************************************/
 %(return) %(name)( ) {
 
 %\istatic char func[] = "%(name)";
 
 
 
 %\ireturn(OK);
 
 } /* %(name) */
 
cppclass(classname "Class Name" 
         )
 /**
  @brief %\S
 */
 class %(classname) {
 
 public:
 %\i%(classname)();
 %\i%(classname)(const %(classname) & rhs);
 %\i~%(classname)();
 
 %\i%(classname) & operator=(const %(classname) & rhs);
 
 protected:
 
 private:
 
 };
 
 // Default Constructor
 %(classname)::%(classname)()
 { }
 
 // Copy constructor
 %(classname)::%(classname)(const %(classname) & rhs)
 { }
 
 // Operator ==
 %(classname) & %(classname)::operator=(const %(classname) & rhs)
 {
 %\iif (this == &rhs)
 %\i%\ireturn *this;
 
 %\i// Perform a deep copy
 
 %\i return *this;
 }
 
 // Destructor
 %(classname)::~%(classname)()
 { }
 
doxyfilecomment /**
                 * @file %\S
                 * @brief %\c
                 * %\S
                 * @par Edit History
                 *  %\i - [0]   [P. W. Joireman] %\d Initial Revision
                 * %\S
                 * @par Version:
                 *  %\i $Id: $
                 * %\S
                 * @par Copyright &copy; 2011 VG Bioinformatics, Inc.  All rights reserved.
                 */
                /*       1         2         3         4         5         6         7         8   */
                /*345678901234567890123456789012345678901234567890123456789012345678901234567890   */
                %\l
                /* system header files */
                %\l
                /* local header files */
                %\l
=surround_with_struct struct {
                      %\m sur_text -indent%
                      } %\c;
=surround_with_static_cast static_cast<%\c>(%\m sur_text%)
=surround_with_new_c_file #include <stdio.h>
                          %\l
                          int main (int argc, char *argv[])
                          {
                          %\m sur_text -indent%
                          %\ireturn(0);
                          }
                          %\l
                          %\l
cppderivedclass(classname "Class Name" 
                baseclass "Base Class"
                )
 class %(classname) : public %(baseclass) {
 
 public:
 %\i%(classname)();
 %\i%(classname)(const %(classname) & rhs);
 %\i~%(classname)();
 
 %\i%(classname) & operator=(const %(classname) & rhs);
 
 protected:
 
 private:
 
 };
 
 // Default Constructor
 %(classname)::%(classname)()
 { }
 
 // Copy constructor
 %(classname)::%(classname)(const %(classname) & rhs)
 :%(baseclass)(rhs)
 { }
 
 // Operator ==
 %(classname) & %(classname)::operator=(const %(classname) & rhs)
 {
 %\iif (this == &rhs)
 %\i%\ireturn *this;
 
 %\i// Call base class assignment operator
 %\i%(baseclass)::operator=(rhs);
 
 %\i// Perform a deep copy
 
 %\i return *this;
 }
 
 // Destructor
 %(classname)::~%(classname)()
 { }
=surround_with_switch switch (%\c) {
                      %\m sur_text%
                      }
=surround_with_do...while do {
                          %\m sur_text -indent%
                          } while (%\c);
=surround_with_case case %\c:
                    %\m sur_text -indent%
                    break;
=surround_with_try...catch try {
                           %\m sur_text -indent%
                           } catch (%\c) { %\S
                           }
=surround_with_for for (%\c) {
                   %\m sur_text -indent%
                   }
=surround_with_dynamic_cast dynamic_cast<%\c>(%\m sur_text%)
=surround_with_#if...else %\m begin_line%#if %\c
                          %\m sur_text%
                          %\m begin_line%#else
                          %\m sur_text%
                          %\m begin_line%#endif
=surround_with_while while (%\c) {
                     %\m sur_text -indent%
                     }
=surround_with_new_cpp_file #include <iostream>
                            %\l
                            using namespace std;
                            %\l
                            int main (int argc, char *argv[])
                            {
                            %\m sur_text -indent%
                            %\ireturn(0);
                            }
                            %\l
=surround_with_try try {
                   %\m sur_text -indent%
                   }
=surround_with_if...else if (%\c) {
                         %\m sur_text -indent%
                         } else {
                         %\m sur_text -indent%
                         }
=surround_with_if_condition if (%\m sur_text -stripend ;%) {
                            %\i%\c
                            }
cpputestmain /**
              @file %\S
              @brief Main program to run all tests with CppUTest framework
             %\l
              Standard main program used with CppUTest unit testing
              framework.  See: http://www.cpputest.org/
             %\l
              Created: %\d, %\t
             %\l
              Programmer: P. W. Joireman
             **************************************************/
             %\l
             #include "CppUTest/CommandLineTestRunner.h"
             %\l
             int main(int argc, char* argv[]) {
               return RUN_ALL_TESTS(argc, argv);
             }
             %\l
