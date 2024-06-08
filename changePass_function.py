from PyQt5.QtWidgets import QDialog, QApplication, QGraphicsBlurEffect, QMessageBox, QAction, QHeaderView
from datetime import datetime, timedelta
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


def changePass(self):
    user_verify = self.user_verification_input.text()
    new_pw = self.newPassword_input.text()
    confirm_pw = self.confirmPassword_input.text()
    sql_select_pw = "SELECT admin_alter_user FROM admin WHERE admin_alter_user = %s"
    data_insert = (user_verify,)
    cur.execute(sql_select_pw,data_insert)
    sql_fetch_pw = cur.fetchone()
    if sql_fetch_pw == None:
        self.dialog.setText('\nUser verification is incorrect. Try again.')
        self.dialog.show()
        return 0
    if new_pw != confirm_pw:
        self.dialog.setText('\nConfirm password does not match. Try again.')
        self.dialog.show()
        return 0
    elif new_pw == "" and confirm_pw == "":
        self.dialog.setText('\nFill up first. Try again.')
        self.dialog.show()
    elif len(new_pw) > 50:
        self.dialog.setText('\nYou have reached the limit of 50 characters. Try again.')
        self.dialog.show()
    else:
        self.dialog.setText('\nAre you sure to change your password?')
        self.dialog.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
        self.dialog.show()
        result = self.dialog.exec_()
        if result == QMessageBox.Ok:
            sql_update_pw = "UPDATE admin SET admin_password = %s WHERE admin_username = 'admin'"
            data_insert = (new_pw,)
            print('test')
            cur.execute(sql_update_pw, data_insert)
            conn.commit()
            return 1
        elif result == QMessageBox.Cancel:
            return 0


