# QScintilla is a port to Qt of Neil Hodgson's Scintilla C++ editor control
# available at http://www.riverbankcomputing.com/software/qscintilla/
#
# The module defines the following variables:
#  QT5QSCINTILLA_FOUND - the system has QScintilla
#  QT5QSCINTILLA_INCLUDE_DIR - where to find qsciscintilla.h
#  QT5QSCINTILLA_INCLUDE_DIRS - qscintilla includes
#  QT5QSCINTILLA_LIBRARY - where to find the QScintilla library
#  QT5QSCINTILLA_LIBRARIES - additional libraries
#  QT5QSCINTILLA_MAJOR_VERSION - major version
#  QT5QSCINTILLA_MINOR_VERSION - minor version
#  QT5QSCINTILLA_PATCH_VERSION - patch version
#  QT5QSCINTILLA_VERSION_STRING - version (ex. 2.6.2)
#  QT5QSCINTILLA_ROOT_DIR - root dir (ex. /usr/local)

#=============================================================================
# Copyright 2010-2013, Julien Schueller
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met: 
# 
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer. 
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution. 
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# The views and conclusions contained in the software and documentation are those
# of the authors and should not be interpreted as representing official policies, 
# either expressed or implied, of the FreeBSD Project.
#=============================================================================


find_path ( QT5QSCINTILLA_INCLUDE_DIR
  NAMES qsciscintilla.h
  HINTS ${Qt5Widgets_INCLUDE_DIRS}
  PATH_SUFFIXES qt5 Qsci
)

set ( QT5QSCINTILLA_INCLUDE_DIRS ${QT5QSCINTILLA_INCLUDE_DIR} )

# version
set ( _VERSION_FILE ${QT5QSCINTILLA_INCLUDE_DIR}/qsciglobal.h )
if ( EXISTS ${_VERSION_FILE} )
  file ( STRINGS ${_VERSION_FILE} _VERSION_LINE REGEX "define[ ]+QSCINTILLA_VERSION_STR" )
  if ( _VERSION_LINE )
    string ( REGEX REPLACE ".*define[ ]+QSCINTILLA_VERSION_STR[ ]+\"(.*)\".*" "\\1" QT5QSCINTILLA_VERSION_STRING "${_VERSION_LINE}" )
    string ( REGEX REPLACE "([0-9]+)\\.([0-9]+)\\.([0-9]+)" "\\1" QT5QSCINTILLA_MAJOR_VERSION "${QT5QSCINTILLA_VERSION_STRING}" )
    string ( REGEX REPLACE "([0-9]+)\\.([0-9]+)\\.([0-9]+)" "\\2" QT5QSCINTILLA_MINOR_VERSION "${QT5QSCINTILLA_VERSION_STRING}" )
    string ( REGEX REPLACE "([0-9]+)\\.([0-9]+)\\.([0-9]+)" "\\3" QT5QSCINTILLA_PATCH_VERSION "${QT5QSCINTILLA_VERSION_STRING}" )
  endif ()
endif ()


# check version
set ( _QT5QSCINTILLA_VERSION_MATCH TRUE )
if ( QScintilla_FIND_VERSION AND QT5QSCINTILLA_VERSION_STRING )
  if ( QScintilla_FIND_VERSION_EXACT )
    if ( NOT QScintilla_FIND_VERSION VERSION_EQUAL QT5QSCINTILLA_VERSION_STRING )
      set ( _QT5QSCINTILLA_VERSION_MATCH FALSE )
    endif ()
  else ()
    if ( QT5QSCINTILLA_VERSION_STRING VERSION_LESS QScintilla_FIND_VERSION )
      set ( _QT5QSCINTILLA_VERSION_MATCH FALSE )
    endif ()
  endif ()
endif ()


find_library ( QT5QSCINTILLA_LIBRARY
  NAMES qt5scintilla2 qscintilla2-qt5 qscintilla2 qscintilla2_qt5
  HINTS ${Qt5Widgets_LIBRARIES}
)

set ( QT5QSCINTILLA_LIBRARIES ${QT5QSCINTILLA_LIBRARY} )

IF( QT5QSCINTILLA_LIBRARY AND QT5QSCINTILLA_INCLUDE_DIR )
        SET( QT5QSCINTILLA_FOUND TRUE )
ENDIF( QT5QSCINTILLA_LIBRARY AND QT5QSCINTILLA_INCLUDE_DIR )

#IF( QT5QSCINTILLA_FOUND )
#                MESSAGE( STATUS "Found QScintilla-Qt5 header files in ${QT5QSCINTILLA_INCLUDE_DIR}")
#                MESSAGE( STATUS "Found QScintilla-Qt5 libraries: ${QT5QSCINTILLA_LIBRARY}")
#ENDIF(QT5QSCINTILLA_FOUND)

# try to guess root dir from include dir
if ( QT5QSCINTILLA_INCLUDE_DIR )
  string ( REGEX REPLACE "(.*)/include.*" "\\1" QT5QSCINTILLA_ROOT_DIR ${QT5QSCINTILLA_INCLUDE_DIR} )
# try to guess root dir from library dir
elseif ( QT5QSCINTILLA_LIBRARY )
  string ( REGEX REPLACE "(.*)/lib[/|32|64].*" "\\1" QT5QSCINTILLA_ROOT_DIR ${QT5QSCINTILLA_LIBRARY} )
endif ()


# handle the QUIETLY and REQUIRED arguments
include ( FindPackageHandleStandardArgs )
find_package_handle_standard_args( Qt5QScintilla REQUIRED_VARS QT5QSCINTILLA_LIBRARY QT5QSCINTILLA_INCLUDE_DIR _QT5QSCINTILLA_VERSION_MATCH VERSION_VAR QT5QSCINTILLA_VERSION_STRING )

mark_as_advanced (
  QT5QSCINTILLA_LIBRARY
  QT5QSCINTILLA_LIBRARIES
  QT5QSCINTILLA_INCLUDE_DIR
  QT5QSCINTILLA_INCLUDE_DIRS
  QT5QSCINTILLA_MAJOR_VERSION
  QT5QSCINTILLA_MINOR_VERSION
  QT5QSCINTILLA_PATCH_VERSION
  QT5QSCINTILLA_VERSION_STRING
  QT5QSCINTILLA_ROOT_DIR
  )
