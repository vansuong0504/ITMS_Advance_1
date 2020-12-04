#Test Case 3-Mở Google. Comand Print đó là tiêu đề Trang.
#Các bước để tự động hóa:
#1. Khởi chạy trình duyệt theo lựa chọn của bạn, nói., Firefox, chrome.
#2. Mở URL này-https://www.google.com/
#3. Tối đa hóa hoặc kích thước bộ của cửa sổ trình duyệt.
#4. Nhận Tiêu đề của trang và in nó.
#5. Chốt trình duyệt.

require 'selenium-webdriver'

begin
    driver = Selenium::WebDriver.for :chrome
    driver.get 'https://google.com'
#Maximize window
    driver.manage.window.maximize
#Get title and show it        
    puts driver.title

    sleep 3
    driver.quit
end

