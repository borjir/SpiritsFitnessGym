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

def delete_member_data(self):
    sql_delete_duplicate_expired_mem = "DELETE FROM expired_member"
    cur.execute(sql_delete_duplicate_expired_mem)
    sql_insert_expired_mem = ("INSERT INTO EXPIRED_MEMBER(member_id) "
                              "SELECT MEMBER_ID FROM MEMBER WHERE CURRENT_DATE >= MEMBER_END_DATE")
    cur.execute(sql_insert_expired_mem)
    # sql_delete_expired_mem = "DELETE FROM expired_member WHERE CURRENT_DATE > member_end_date"
    # cur.execute(sql_delete_expired_mem)
    sql_delete_member = "DELETE FROM member WHERE CURRENT_DATE > member_end_date"
    cur.execute(sql_delete_member)
    conn.commit()
def count_member_data(self):
    sql_count = "SELECT COUNT(member_id) FROM member"
    cur.execute(sql_count)
    fetch_count = cur.fetchone()
    fetch_count = str(fetch_count)
    fetch_count = fetch_count.replace("(", "")
    fetch_count = fetch_count.replace(")", "")
    fetch_count = fetch_count.replace(",", "")
    self.member_total_label.setText(fetch_count)
    conn.commit()

def member_main(self):
    first_name = self.member_first_name_main_input.text()
    last_name = self.member_last_name_main_input.text()
    first_name = first_name.upper()
    last_name = last_name.upper()
    sql_select = "SELECT member_id FROM member WHERE member_fname = %s AND member_lname = %s"
    data_select = (first_name, last_name)
    cur.execute(sql_select, data_select)
    fetch_one = cur.fetchone()
    if first_name == "" or last_name == "":
        self.dialog.setText('\nFill up first. Try again.')
        self.dialog.setStandardButtons(QMessageBox.Ok)
        self.dialog.show()
        return 0
    else:
        if fetch_one == None:
            sql_insert_member = "INSERT INTO member(member_fname, member_lname) VALUES(%s, %s)"
            data_insert = (first_name, last_name)
            cur.execute(sql_insert_member, data_insert)
            sql_update_member = "UPDATE member SET member_full_name = CONCAT(%s, ' ', %s) WHERE member_fname = %s AND member_lname = %s"
            data_update = (first_name, last_name, first_name, last_name)
            cur.execute(sql_update_member, data_update)
            sql_update_member_end_date = "UPDATE member SET member_end_date = CURRENT_DATE + INTERVAL '30 DAYS' WHERE member_fname = %s AND member_lname = %s"
            cur.execute(sql_update_member_end_date, data_insert)
            conn.commit()
            sql_fetch_mem_id = "SELECT member_id FROM MEMBER WHERE member_fname = %s AND member_lname = %s"
            data_fetch = (first_name, last_name)
            cur.execute(sql_fetch_mem_id, data_fetch)
            fetch_one_id = cur.fetchone()
            sql_insert_day = "INSERT INTO entry_this_day(entry_day_fname, entry_day_lname, entry_day_status, member_id) VALUES(%s, %s, 'MEMBER', %s)"
            data_insert_entry = (first_name, last_name, fetch_one_id)
            cur.execute(sql_insert_day, data_insert_entry)
            sql_update_day = "UPDATE entry_this_day SET entry_day_fullname = CONCAT(%s, ' ', %s) WHERE entry_day_fname = %s AND entry_day_lname = %s"
            data_update = (first_name, last_name, first_name, last_name)
            cur.execute(sql_update_day, data_update)
            sql_insert_week = "INSERT INTO entry_this_week(entry_week_fname, entry_week_lname, entry_week_status, member_id) VALUES(%s, %s, 'MEMBER', %s)"
            cur.execute(sql_insert_week, data_insert_entry)
            sql_update_week = "UPDATE entry_this_week SET entry_week_fullname = CONCAT(%s, ' ', %s) WHERE entry_week_fname = %s AND entry_week_lname = %s"
            cur.execute(sql_update_week, data_update)
            sql_insert_month = "INSERT INTO entry_this_month(entry_month_fname, entry_month_lname, entry_month_status, member_id) VALUES(%s, %s, 'MEMBER', %s)"
            cur.execute(sql_insert_month, data_insert_entry)
            sql_update_month = "UPDATE entry_this_month SET entry_month_fullname = CONCAT(%s, ' ', %s) WHERE entry_month_fname = %s AND entry_month_lname = %s"
            cur.execute(sql_update_month, data_update)
            conn.commit()
            return 1
        else:
            self.dialog.setText('\nName already exists. Try again.')
            self.dialog.setStandardButtons(QMessageBox.Ok)
            self.dialog.show()
            return 0