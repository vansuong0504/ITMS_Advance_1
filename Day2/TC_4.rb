# Test Case 4-Mở Google. comand Print url hiện tại.
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Nhận URL của trang hiện tại và in nó.
# 5. Chốt trình duyệt.

require 'selenium-webdriver'

begin
    driver = Selenium::WebDriver.for :chrome
    driver.get 'https://google.com'
# Maximize window
    driver.manage.window.maximize
# Get URL and show it        
    puts driver.current_url

    sleep 3
    driver.quit
end