import psycopg2
from PyQt5.QtWidgets import QDialog, QApplication, QGraphicsBlurEffect, QMessageBox, QAction, QHeaderView

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

def count_employee_data(self):
    sql_count = "SELECT COUNT(emp_id) FROM employee"
    cur.execute(sql_count)
    fetch_count = cur.fetchone()
    fetch_count = str(fetch_count)
    fetch_count = fetch_count.replace("(", "")
    fetch_count = fetch_count.replace(")", "")
    fetch_count = fetch_count.replace(",", "")
    self.employee_total_home_label.setText(fetch_count)
    self.employee_total_main_label.setText(fetch_count)
    conn.commit()
def add_employee(self):
    first_name = self.employee_first_name_main_input.text()
    last_name = self.employee_last_name_main_input.text()
    contact_num = self.employee_phone_num_input.text()
    first_name = first_name.upper()
    last_name = last_name.upper()
    sql_select = "SELECT emp_id FROM employee WHERE emp_fname = %s AND emp_lname = %s"
    data_select = (first_name, last_name,)
    cur.execute(sql_select, data_select)
    fetch_one = cur.fetchone()
    if first_name == "" or last_name == "" or contact_num == "":
        self.dialog.setText('\nFill up first. Try again.')
        self.dialog.setStandardButtons(QMessageBox.Ok)
        self.dialog.show()
        return 0
    elif len(contact_num) != 11:
        self.dialog.setText('\nInvalid phone number format. Try again.')
        self.dialog.setStandardButtons(QMessageBox.Ok)
        self.dialog.show()
    else:
        try:
            int(contact_num)
            if fetch_one == None:
                sql_select_phone_num = "SELECT emp_id FROM employee WHERE emp_phone_num = %s"
                data_select_num = (contact_num,)
                cur.execute(sql_select_phone_num, data_select_num)
                fetch_one_num = cur.fetchone()
                if fetch_one_num == None:
                    str(contact_num)
                    sql_insert_emp = "INSERT INTO employee(emp_fname, emp_lname, emp_phone_num, gym_id) VALUES(%s, %s, %s, 1)"
                    data_insert = (first_name, last_name, contact_num)
                    cur.execute(sql_insert_emp, data_insert)
                    sql_update_emp = "UPDATE employee SET emp_full_name = CONCAT(%s, ' ', %s) WHERE emp_fname = %s AND emp_lname = %s"
                    data_update = (first_name, last_name, first_name, last_name)
                    cur.execute(sql_update_emp, data_update)
                    conn.commit()
                    return 1
                else:
                    self.dialog.setText('\nPhone number already exists. Try again.')
                    self.dialog.setStandardButtons(QMessageBox.Ok)
                    self.dialog.show()
                    return 0
            else:
                self.dialog.setText('\nName already exists. Try again.')
                self.dialog.setStandardButtons(QMessageBox.Ok)
                self.dialog.show()
                return 0
        except ValueError:
            self.dialog.setText('\nInvalid phone number format. Try again.')
            self.dialog.setStandardButtons(QMessageBox.Ok)
            self.dialog.show()
            return 0


def remove_employee(self):
    name = self.remove_employee_name_comboBox.currentText()
    self.dialog.setText('\nAre you sure to remove this employee?')
    self.dialog.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
    self.dialog.show()
    result = self.dialog.exec_()
    if result == QMessageBox.Ok:
        sql_select_data = "SELECT trainer_id FROM trainer WHERE trainer_full_name = %s"
        data_insert = (name,)
        cur.execute(sql_select_data, data_insert)
        trainer_fetch_data = cur.fetchone()
        if trainer_fetch_data == None:
            sql_delete_employee = "DELETE FROM employee WHERE emp_full_name = %s"
            data_delete = (name,)
            cur.execute(sql_delete_employee, data_delete)
            conn.commit()
            return 1
        else:
            self.dialog.setText('\nThis employee is currently a trainer. Try again.')
            self.dialog.setStandardButtons(QMessageBox.Ok)
            self.dialog.show()
            return 0
        return 1
    elif result == QMessageBox.Cancel:
        return 1


