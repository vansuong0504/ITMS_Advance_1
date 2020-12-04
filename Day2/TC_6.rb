# Test Case 6-Nhận tiêu đề trang sau khi tìm kiếm với Google.com
# Các bước để tự động hóa:
# 1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
# 2. Mở URL này-https://www.google.com/
# 3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
# 4. Tìm kiếm với từ 'iTMS Coaching'
# 5. Nhận tiêu đề Trang và in nó.
# 6. Chốt trình duyệt.

require 'selenium-webdriver'

begin
    driver = Selenium::WebDriver.for :chrome
    driver.get 'https://google.com'
# Maximize window
    driver.manage.window.maximize
# Search with keywords as "iTMS Coaching"
    search = driver.find_element(css: '[name="q"]')
    search.send_keys 'iTMS Coaching'
    search.send_keys :enter
# Get title and show
    puts driver.title

    sleep 3
    driver.quit
end