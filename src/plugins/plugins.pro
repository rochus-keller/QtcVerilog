include(../../qtcreator.pri)

TEMPLATE  = subdirs

SUBDIRS   = \
    coreplugin \
    texteditor \
#    cppeditor \
#    bineditor \
#    diffeditor \ # check
#    imageviewer \
#    bookmarks \  # check
     projectexplorer \
     qtctools \
#    vcsbase \ # check
#    perforce \
#    subversion \
#    git \ # check
#    cvs \
#    cpptools \
#    qtsupport \
#    qmakeprojectmanager \
#    debugger \
#    help \
#    cpaster \ # check
#    cmakeprojectmanager \
#    autotoolsprojectmanager \
#    fakevim \
#    emacskeys \
#    designer \
#    resourceeditor \
#    genericprojectmanager \
#    qmljseditor \
#    qmlprojectmanager \
#    glsleditor \
#    pythoneditor \
#    mercurial \
#    bazaar \
#    classview \
#    tasklist \ # check
#    analyzerbase \
#    qmljstools \
#    macros \
#    remotelinux \
#    android \
#    valgrind \
#    todo \
#    qnx \
#    clearcase \
#    baremetal \
#    ios \
#    beautifier \
#    modeleditor \
#    qmakeandroidsupport \
#    winrt \
#    qmlprofiler \
#    updateinfo \
#    welcome


for(p, SUBDIRS) {
    QTC_PLUGIN_DEPENDS =
    include($$p/$${p}_dependencies.pri)
    pv = $${p}.depends
    $$pv = $$QTC_PLUGIN_DEPENDS
}

#linux-* {
#     SUBDIRS += debugger/ptracepreload.pro
#}
