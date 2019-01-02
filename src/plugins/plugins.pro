include(../../qtcreator.pri)

TEMPLATE  = subdirs

SUBDIRS   = \
    coreplugin \
    texteditor \
#    cppeditor \
#    bineditor \
#    diffeditor \
#    imageviewer \
#    bookmarks \
     projectexplorer \
#    vcsbase \
#    perforce \
#    subversion \
#    git \
#    cvs \
#    cpptools \
#    qtsupport \
#    qmakeprojectmanager \
#    debugger \
#    help \
#    cpaster \
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
#    tasklist \
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
