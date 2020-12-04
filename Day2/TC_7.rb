# Test Case 7-Dạng đầu vào
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://itmscoaching.herokuapp.com/form
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Nhập mẫu với dữ liệu sau:
# - Tên: iTMS
# - Họ: Huấn luyện viên
# - Chức danh công việc: QA
# - Trình độ giáo dục cao nhất: Cao đẳng
# - Tình dục: Nam giới
# - Năm kinh nghiệm: 2-4
# - Ngày: 27/10/2025
# 5. Nhấp vào Gửi
# 6. Trình duyệt đóng

require 'selenium-webdriver'
require 'rubygems'

begin
    driver = Selenium::WebDriver.for :chrome
    driver.get 'https://itmscoaching.herokuapp.com/form'
# Maximize window
    driver.manage.window.maximize
# Input data
    firstName = driver.find_element(id: 'first-name')
    firstName.send_keys 'iTMS'

    lastName = driver.find_element(id: 'last-name')
    lastName.send_keys 'Huấn luyện viên'

    job = driver.find_element(id: 'job-title')
    job.send_keys 'QA'

    college = driver.find_element(id: 'radio-button-2')
    college.click

    male = driver.find_element(id: 'checkbox-1')
    male.click

    option = driver.find_element(id: 'select-menu')
    # get option for Dropdownlist
    yearExp = Selenium::WebDriver::Support::Select.new(option)
    yearExp.select_by(:value, '2')

    sleep 3

    date = driver.find_element(id:  'datepicker')
    date.send_keys '27/10/2025'

    submit = driver.find_element(xpath:  "//a[contains(text(),'Submit')]")
    submit.click

    sleep 3
    driver.quit
end