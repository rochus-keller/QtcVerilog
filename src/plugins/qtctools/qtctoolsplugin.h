#ifndef QTCTOOLS_H
#define QTCTOOLS_H

#include "qtctools_global.h"

#include <extensionsystem/iplugin.h>

namespace QtcTools {
namespace Internal {

class QtcToolsPlugin : public ExtensionSystem::IPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QtCreatorPlugin" FILE "QtcTools.json")

public:
    QtcToolsPlugin();
    ~QtcToolsPlugin();

    bool initialize(const QStringList &arguments, QString *errorString);
    void extensionsInitialized();
    ShutdownFlag aboutToShutdown();

private slots:
    void triggerAction();
};

} // namespace Internal
} // namespace QtcTools

#endif // QTCTOOLS_H

