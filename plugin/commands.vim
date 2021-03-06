" Command to reverse selected lines
command! -bar -range=% Reverse <line1>,<line2>g/^/m<line1>-1|nohl

" Break SQL to better look
command! -range SQLBreak call user#sql#break(<line1>, <line2>)

" Trim the file
command! Trim call buffer#trim()

" Highlight the given text without moving the cursor
command! -nargs=+ H call text#highlight(<q-args>)

" Preserve position while executing the command
command! -nargs=+ P call preserve#preserve(<q-args>)

" Fold all buffer comments
command! FoldComments call fold#comments()

" Remove comments and multiple empty lines
command! RemoveComments call text#remove_comments()
