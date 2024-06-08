from PyQt5.QtWidgets import QDialog, QApplication, QGraphicsBlurEffect, QMessageBox, QAction, QHeaderView
import psycopg2

conn = psycopg2.connect(database="SpiritsFitnessGym",
                        user="postgres",
                        host='localhost',
                        password="postgres",
                        port=5432)
cur = conn.cursor()

def __init__(self):
    self.dialog = QMessageBox(self)
    self.dialog.setWindowTitle("Spirit's Fitness Gym")
    self.dialog.setStyleSheet("QMessageBox{background-color: white;}"
                              "QLabel{border-color: white;font: bold 20px Arial, serif;color: #037a28;}"
                              "QPushButton{padding: 5px 40px 5px 40px;border-color: #FF3E3F;background-color: #ff3e3f;color: rgb(255, 255, 255);border-radius: 10px;font: bold 20px Arial, serif;cursor: grab;}"
                              "QPushButton:hover{border-color:#cc3132;background-color: #cc3132;}")

def login(self):
    username = self.username_input.text()
    password = self.password_input.text()
    sql_user_fetch = "SELECT admin_username, admin_password FROM admin WHERE admin_username = %s AND admin_password = %s"
    data_insert = (username, password)
    cur.execute(sql_user_fetch,data_insert)
    sql_fetch_data = cur.fetchone()
    if sql_fetch_data == None:
        self.dialog = QMessageBox(self)
        self.dialog.setWindowTitle("Spirit's Fitness Gym")
        self.dialog.setStyleSheet("QMessageBox{background-color: white;}"
                                  "QLabel{border-color: white;font: bold 20px Arial, serif;color: #037a28;}"
                                  "QPushButton{padding: 5px 40px 5px 40px;border-color: #FF3E3F;background-color: #ff3e3f;color: rgb(255, 255, 255);border-radius: 10px;font: bold 20px Arial, serif;cursor: grab;}"
                                  "QPushButton:hover{border-color:#cc3132;background-color: #cc3132;}")
        self.dialog.setText('\nInvalid username or password. Try again.')
        self.dialog.show()
        return 0
    else:
        return 1
