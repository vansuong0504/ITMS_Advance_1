#Test Case 2-Mở Google. comand tối đa hóa cửa sổ trình duyệt.
#Các bước để tự động hóa:
#1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
#2. Mở URL này-https://www.google.com/
#3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
#4. Chốt trình duyệt.

require 'selenium-webdriver'

begin
    driver = Selenium::WebDriver.for :chrome
    driver.get 'https://google.com'
#Maximize window
    driver.manage.window.maximize
        sleep 3
    driver.quit
end

