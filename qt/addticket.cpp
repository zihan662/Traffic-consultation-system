#include "addticket.h"

AddTicket::AddTicket(QString tool,QWidget *parent)
    : QMainWindow{parent},ui(new Ui::AllTickets)
{
    ui->setupUi(this);
}

void AddTicket::creattickets(vector<LineNode> arr)
{
    if(ui->scrollAreaWidgetContents->layout()!=nullptr){
        delete ui->scrollAreaWidgetContents->layout();
    }
    QGridLayout*layout=new QGridLayout();
    for(auto r:arr){
        Ticket*t=new Ticket(this,r);
        layout->addWidget(t);
    }//此处添加
    ui->scrollAreaWidgetContents->setLayout(layout);
}

void AddTicket::on_backbtn_clicked()
{
    SHP();
}

