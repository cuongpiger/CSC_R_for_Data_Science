library("stringr")

task_1.function = function() {
    str = readline(prompt="Nhập chuổi:")
    writeLines(str)
}

task_3.function = function() {
    str = readline(prompt="Nhập chuổi:")
    screen = toupper(str)
    writeLines(screen) 
}

task_4.function = function() {
    str = readline(prompt="Nhập chuổi:")
    
    lst_words = strsplit(str, " ")
    print(lst_words)
}

task_6.function = function() {
    word = readline(prompt="Nhập từ:")
    lst_words = unlist(strsplit(readline(prompt="Nhập câu:"), ' '))
    
    if (word %in% lst_words) {
        writeLines("Found!!!")
    } else {
        writeLines("Not found!!!")
    }
    
}

task_7.function = function() {
    sentence = readline(prompt="Nhập câu:")
    word = readline(prompt="Nhập từ cần tìm:")
    replace = readline(prompt="Nhập từ thay thế:")
    sentence = str_replace_all(sentence, word, replace)

    writeLines(sprintf("Chuổi sau khi thay thế: %s", sentence))
}

task_2.function = function() {
    dob = as.Date(readline(prompt="Nhập ngày sinh (YYYY-mm-dd):"))
    y = as.numeric(format(dob,'%Y'))
    m = as.numeric(format(dob,'%m'))
    d = as.numeric(format(dob,'%d'))
    
    tmp1 = as.Date(sprintf("%d-%d-%d", y + 1, m, d))
    
    writeLines(sprintf("The next %d days will be your birthday.", tmp1 - dob))
    writeLines(sprintf("Your birthday has passed %d days.", Sys.Date() - dob))
    
    if (dob - Sys.Date() == 0) {
        writeLines("Happy birthday to you!")
    }
}

task_5.function = function() {
    n = 0
    
    while (n < 10 || n > 20) {
        flush.console()
        n = as.numeric(readline(prompt="Nhập giá trị n (10 <= n <= 20):"))
    }
    
    return (n)
}

task_8.function = function(v1) {
    v2 = c(v1)
    
    for (i in 2:(length(v2) - 1)) {
        flag = abs(v1[i - 1] %% 2) + abs(v1[i + 1] %% 2)
        
        if ((flag == 0) || (flag == 2)) {
            v2[i] = v1[i] + v1[i - 1] + v1[i + 1]
        }
    }
    
    return (v2)
}

task_9.function = function(v2) {
    for (v in v2) {
        if (as.integer(sqrt(v))^2 == as.integer(v)) {
            writeLines(sprintf("%d là số chính phương", v))
        } else {
            writeLines(sprintf("%d không là số chính phương", v))
        }
    }
}