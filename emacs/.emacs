;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; .emacs          : Emacs startup file
;; Author          : Paul W. Joireman
;; Last Modified On: 12/20/2013
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Put this file in your HOME directory  ($HOME or %HOME%)
;; See http://www.math.auc.dk/~dethlef/Tips/
;; for more information on setting up LaTeX, Emacs, AucTeX etc.

;; -----------------------------------------------------------------
;; GLOBAL Preference Variables
;; -----------------------------------------------------------------
(display-time)                      ;; Display time in mode line
(ido-mode t)                        ;; Enable ido-mode, buffer switching
(show-paren-mode t)                 ;; highlights matching parentheses
(column-number-mode t)              ;; Display (line #, column #) in mode line
(global-visual-line-mode t)         ;; wraps lines around (mouse-avoidance-mode
(setq mail-self-blind t) 
(setq delete-auto-save-files t)     ;; Delete autosave files when writing orig
(setq-default case-fold-search nil) ;; Do not fold cases in search 
(setq debug-on-error t)             ;; Set debug option to enable backtrace

(setq next-line-add-newlines t)     ;; C-n adds new lines at end of buffer

;; Set Unix style encoding and line endings for all files
(setq default-buffer-file-coding-system 'utf-8-unix)

;; Enable transient mode mark to highlight marked text
(setq-default transient-mark-mode t)

;;disable splash screen and startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Set search and query highlighting
(setq query-replace-highlight t)        ;highlight during query
(setq search-highlight t)               ;incremental search highlights

;; Load linum mode (toggle buffer dispaly of line numbers M-x linum-mode
(require 'linum)
(autoload 'linum-mode "linum" "toggle line numbers on/off" t) ;

;; Set text mode as default start mode and turn on auto-fill
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Enable abbreviation mode directly at start-up, read
;; abbreviations from home directory
;; (setq-default abbrev-mode t)
;; (read-abbrev-file "~/.abbrev_defs")
;; (setq save-abbrevs t)

;; Disable automatic creation of backup files
(setq make-backup-files nil)
(setq bakup-by-copying t)           ;; If you do, at least do not destroy
(setq delete-auto-save-files t)     ;; Delete autosave files when 

;; -----------------------------------------------------------------
;; GLOBAL KEY-COMMAND BINDINGS
;; -----------------------------------------------------------------
(global-set-key "\C-xc" 'calendar)
(global-set-key "\C-xt" 'eshell)
(global-set-key (kbd "C-<f5>") 'linum-mode)

;; -----------------------------------------------------------------
;; UPDATES TO load-path
;; -----------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0")

;; -----------------------------------------------------------------
;; color-theme  customization 
;; -----------------------------------------------------------------
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;; ------------------------------------------
;; YASNIPPET MODE
;; ------------------------------------------
(require 'yasnippet)
;;(yas/global-mode 1)   uncomment to enable yas for all buffers 
(yas/load-directory "~/.emacs.d/elpa/yasnippet-0.8.0/snippets") 




