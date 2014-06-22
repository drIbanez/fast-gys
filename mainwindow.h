#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#include "gys_controller.h"
#include "gys_types.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

protected:
    virtual void keyPressEvent(QKeyEvent *event);

private slots:
    void on_btnExit_clicked();
    void on_btnLoadFile_clicked();
    void on_btnUpdateAll_clicked();
    void on_mainSitesTable_cellClicked(int row, int column);

private:
    Ui::MainWindow *ui;

signals:
    void exiting();
    void requestLoadFile(QString file_name);
    void requestUpdateRating(QList< QString > sites);
    void requestUpdateAll();
    void requestFindSimilar(QList< QString > sites);
    void requestUpdateSimilar(QList< QString > sites);

public slots:
    void lauchDone();
    void fileLoadingDone();
    void clearTable();
    void recieveSitesData(GYS::DataTable_Map data);
    void errorSlot(QString descr);
};

#endif // MAINWINDOW_H
