#include <QmlApplication/QmlApplication.hpp>

namespace Gui
{

QmlApplication::QmlApplication(QObject *parent) : QObject(parent)
{
}

QmlApplication::~QmlApplication()
{

}

void QmlApplication::changeChatType(QString type)
{
  emit updateChatType(type);
}



} // namespace Gui

