# Test Case 1-Khởi động trình duyệt và Mở Google.com
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Chốt trình duyệt.

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://google.com'
driver.quit

