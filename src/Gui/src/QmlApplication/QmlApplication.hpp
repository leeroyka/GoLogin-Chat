#ifndef FVM_GUI_QML_APPLICATION_HPP
#define FVM_GUI_QML_APPLICATION_HPP

#include <QVariant>
#include <QString>
#include <QFile>
#include <QSettings>
#include <QObject>


namespace Gui {

class QmlApplication: public QObject

{
  Q_OBJECT
public:
  QmlApplication(QObject * parent = nullptr);
  ~QmlApplication();

signals:

  void updateMessages(QString data);

  void updateChatType(QString type);


public slots:
  void changeChatType(QString type);

private:

};
} // namespace Gui

#endif// FVM_GUI_QML_APPLICATION_HPP
